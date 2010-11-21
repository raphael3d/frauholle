class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  
  layout 'about'
  def index
      @title = "All users"
      @users = User.paginate(:page => params[:page])
  end

    def show
      @user = User.find(params[:id])
      @title = @user.name
    end

  def new
    @title = "Sign up"
  end
  
  
  
  def create
      @user = User.new(params[:user])
      if @user.save
        sign_in @user
        flash[:success] = "Willkommen"
        redirect_to @user
      else
        @title = "Sign up"
        render 'new'
      end
    end
    
    private
    
      def authenticate
        deny_access unless signed_in?
      end
      
      def correct_user
            @user = User.find(params[:id])
            redirect_to(root_path) unless current_user?(@user)
          end
end
