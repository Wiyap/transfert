require 'bundler'
Bundler.require
require 'csv'

class Gossip
  attr_accessor :content, :author

  def initialize (params)
    @content = params[:content]
    @author = params[:author]
  end

  def save_gossip
    CSV.open("db/gossip.csv", "a+") do |csv|
      csv << [self.author, self.content]
    end
  end
end

Gossip.new({content: "blibla",author: "kiki"}).save_gossip
Gossip.new({content: "trotro",author: "papi"}).save_gossip