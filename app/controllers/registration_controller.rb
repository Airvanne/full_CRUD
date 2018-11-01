class RegistrationController < ApplicationController

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
