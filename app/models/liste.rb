class Liste < ActiveRecord::Base
  def self.find_listes
    find(:all, :order => "title")
  end
end
