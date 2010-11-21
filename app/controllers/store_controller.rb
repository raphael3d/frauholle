class StoreController < ApplicationController
  layout "main"
  
  def search
     if params[:query]
       #@prodss = Product.search(params[:query])
       @prodss = Product.find_by_title(params[:query])
     else
       @prodss = []
     end
   end
    
  def index
      @prods = Product.paginate(:page => params[:page], :per_page => 10)
      @title = "Produkte"
      
    @products = Product.find_products_for_sale
    
  end




end
