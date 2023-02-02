class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params['author'], params['content'])
    gossip.save
  end

  def index_gossips
    params = Gossip.all
    @view.index_gossips(params)
  end

  def destroy_gossip
    params = @view.destroy_gossip
    Gossip.destroy_gossip(params)
  end

end
