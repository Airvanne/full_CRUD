class RegistrationController < ApplicationController

	protect_from_forgery prepend: true
	skip_before_action :verify_authenticity_token
	
	def new


	end

	def create
       @user = User.find_by(name: params[:name])

		if @user.email == params[:email] && @user.password == params[:password]

		redirect_to "/gossip/index/#{@user.id}"

	else

		puts "ton mot de passe est pas bon"
	end


	end
end
