class GossipController < ApplicationController
  attr_accessor :param
  def new
    # @gossip = Gossip.new
    
  end

  def create
    
    @gossip = Gossip.new
    @gossip.user_id = User.find_by(name: params[:name]).id
    @gossip.title = params[:title]
    @gossip.content = params[:content]
    @gossip.save
    redirect_to "/gossip/index/#{User.find_by(name: params[:name]).id}"
  end

  def show
    # @gossip = Gossip.find(params[:id])
  end

  def index
     @user_id_connected = params[:id]

  end


  def edit
  puts @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
   
    @gossip.title = params[:gossip][:title]
    @gossip.content = params[:gossip][:content]
    @gossip.save
    redirect_to "/gossip/index/#{Gossip.find(params[:id]).user_id}"
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    redirect_to "/gossip/index/#{Gossip.find(params[:id]).user_id}"
    @gossip.delete
    
  end

end
