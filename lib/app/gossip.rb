class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [author, content]
    end
  end

  def self.destroy_gossip(gossip_nb)
    gossips = CSV.read('db/gossip.csv')
    gossips.delete_at(gossip_nb)
    CSV.open('db/gossip.csv', 'w') do |csv|
      gossips.each do |gossip|
        csv << gossip
      end
    end
  end


  def self.all
    all_gossips = []
    CSV.foreach('db/gossip.csv') do |gossip|
      gossip_prov = Gossip.new(gossip[0], gossip[1])
      all_gossips << gossip_prov
    end
    all_gossips
  end
end
