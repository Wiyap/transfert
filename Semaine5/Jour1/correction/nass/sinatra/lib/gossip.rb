require 'csv'
class Gossip 
    attr_accessor :author, :content,

    def initialize(author, content) 
        @author = author
        @content = content
    end

    def save 
      id = []
      CSV.read("./db/gossip.csv").each do |csv_line|
        id << csv_line
      end
      

      CSV.open("./db/gossip.csv", "ab") do |csv|
        csv << [(id.length),@author,@content]
      end
    end

    def self.all
        all_gossips = []
        i = 0 
        CSV.read("./db/gossip.csv").each do |csv_line|
          i += 1
          all_gossips << [i,Gossip.new(csv_line[1],csv_line[2])]
        end
        return all_gossips
      end

end