class PagesController < ApplicationController
 def home
     @prods = Product.first(5)
      @title = "Home"
      
    end

  
  
  def about
    @title = "über uns"
  end
  
  def aktuell
    end
    
  



end
