class UsersController < ApplicationController

	def create
		if params[:denied]
			redirect_to root_path
		else
			if !(User.find_by(username: auth_hash.info.email))
			@user = User.create_user(auth_hash)
		else
			@user = User.find_by username: auth_hash.info.email
		end
		session[:user_id] = @user.id
		redirect_to articles_path
	end
end

	def index
	  current_user = User.find_by_id(session[:current_user_id])
	end
	
	private
	
	def auth_hash
	    request.env['omniauth.auth']
	end

end