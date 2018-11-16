class LikeController < ApplicationController

	def create
		u = Like.new
		u.user_id = params[:user_id]
		u.gossip_id = params[:gossip_id]
        u.save
        redirect_to "/gossip/#{params[:user_id]}"
	end

	def destroy
	  @like = Like.find(params[:id])
      redirect_to "/gossip/#{Like.find(params[:id]).user_id}"
      @like.delete
	end
end
