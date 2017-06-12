class UsersController < ApplicationsController

	def index
	  current_user = User.find_by_id(session[:current_user_id])
	end

	def auth_hash
	    request.env['omniauth.auth']
	end

end