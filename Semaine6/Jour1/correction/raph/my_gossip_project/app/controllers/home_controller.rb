class HomeController < ApplicationController
  def index
    puts "Home".magenta
    @gossip = Gossip.all
  end

end
