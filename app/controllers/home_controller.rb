class HomeController < ApplicationController
	def index
		if current_user
			respond_to do |format|
				format.html
			end
		else
			redirect_to new_user_session_path
		end
	end
end
