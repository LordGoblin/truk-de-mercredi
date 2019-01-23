require	'model.rb'
require 'view.rb'

class Controller

	def initialize
		@view = View.new
	end

	def supp_gossip
		index_gossips
		a = @view.supp_gossip
		Gossip.supp(a, Gossip.all)
	end

	def index_gossips
		@view.index_gossips(Gossip.all)
	end

	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params[:author], params[:content])
		gossip.save
	end
end