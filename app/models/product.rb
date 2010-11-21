class Product < ActiveRecord::Base

      
   
    
  def self.find_products_for_sale 
    find(:all, :order => "title")
  end
    
end
