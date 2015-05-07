class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "Vous êtes bien inscrits"
			flash[:color] = "valid"
		else
			flash[:notice] = "Non valide"
			flash[:color] = "invalid"
		end
		render "new"
	end
end
