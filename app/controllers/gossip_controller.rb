class GossipController < ApplicationController
  def new
    # @gossip = Gossip.new
  end

  def create
    # gossip = Gossip.create!(params_from_form)
    @gossip = Gossip.new
    @gossip.anonymous_gossiper = params[:username]
    @gossip.title = params[:title]
    @gossip.content = params[:content]
    @gossip.save
    redirect_to "/gossip/#{params[:id]}"
  end

  def show
    # @gossip = Gossip.find(params[:id])
  end

  def index
  end


  def edit
    # @params = params[:id]
    puts 'SAAALUUUUUUTTTT'
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.anonymous_gossiper = params[:gossip][:anonymous_gossiper]
    @gossip.title = params[:gossip][:title]
    @gossip.content = params[:gossip][:content]
    @gossip.save
    redirect_to "/gossip/#{params[:id]}"
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.delete
    redirect_to gossip_index_path
  end

end
