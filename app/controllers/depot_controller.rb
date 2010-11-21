class DepotController < ApplicationController
 layout 'main'
  def index
    @title = "Aktuell"
    @listes = Liste.find_listes
  end

end
