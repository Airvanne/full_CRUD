class GossipController < ApplicationController
  def new
    # @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new
    @gossip.anonymous_gossiper = params[:username]
    @gossip.title = params[:title]
    @gossip.content = params[:content]
    @gossip.save
  end

  def show
    @allgossips = Gossip.all.count
  end

  def edit
    @params = params[:id]
  end

  def update
puts  @params = params[:id]
   @g = Gossip.find(@params)
   @g.anonymous_gossiper = params[:username]
   @g.title = params[:title]
   @g.content = params[:content]
   @g.save
  end
end
