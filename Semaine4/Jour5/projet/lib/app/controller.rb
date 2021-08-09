class Controller
  attr_accessor :view

  def initialize
    puts "Hello ici c'est comme Gossip Girl. On va balancer des crottes de nez dans la gueule de tout le monde!"
    @view = View.new
  end
  
  def create_gossip
    params = @view.create_gossip
    new_gossip = Gossip.new(params)
    new_gossip.save_gossip
  end

  def index_gossip
    gossip_array = CSV.read("db/gossip.csv")
    @view.index_gossip(gossip)
  end

  def delete_gossip
    gossip_array = CSV.read("db/gossip.csv")
    gossip_array.delete_at((@view.delete_gossip)-1)
    CSV.open("db/gossip.csv", "w") do |csv|
      gossip_array.each do |n|
        csv << n
      end
    end
  end
end







# def delete_gossip
#   table = CSV.table(@csvfile)
#   table.delete_if do |row|
#     row[:foo] == 'true'
#   end

#   File.open(@csvfile, 'w') do |f|
#     f.write(table.to_csv)
#   end
# end