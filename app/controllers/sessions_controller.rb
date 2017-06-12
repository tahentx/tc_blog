class SessionsController < ApplicationsController

	def create
	  session[:current_user_id] = @user.id
	end

	def new
		if current_user
			redirect_to '/articles'
		end
	end

	def failure
		redirect_to root_path
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path, :alert => "You are logged out!"
	end

end