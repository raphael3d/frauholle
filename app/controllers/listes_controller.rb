class ListesController < ApplicationController
  # GET /listes
  # GET /listes.xml
  before_filter :authenticate, :only => [:new, :edit, :update]
  layout "main"
  
  def index
     
    @listes = Liste.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @listes }
    end
  end

  # GET /listes/1
  # GET /listes/1.xml
  def show
    @liste = Liste.find(params[:id])
    @title = "Liste"
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liste }
    end
  end

  # GET /listes/new
  # GET /listes/new.xml
  def new
    @liste = Liste.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liste }
    end
  end

  # GET /listes/1/edit
  def edit
    @liste = Liste.find(params[:id])
  end

  # POST /listes
  # POST /listes.xml
  def create
    @liste = Liste.new(params[:liste])

    respond_to do |format|
      if @liste.save
        format.html { redirect_to('/aktuell', :notice => 'Eintrag erfolgreich erstellt.') }
        format.xml  { render :xml => @liste, :status => :created, :location => @liste }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @liste.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /listes/1
  # PUT /listes/1.xml
  def update
    @liste = Liste.find(params[:id])

    respond_to do |format|
      if @liste.update_attributes(params[:liste])
        format.html { redirect_to(@liste, :notice => 'Eintrag erfolgreich updated') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liste.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  
  def destroy
    @liste = Liste.find(params[:id])
    @liste.destroy

    respond_to do |format|
      format.html { redirect_to(listes_url) }
      format.xml  { head :ok }
    end
  end

 

end
