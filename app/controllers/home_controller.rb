class HomeController < ApplicationController
	skip_before_filter :authenticate_user!, :only => :index
	
	def index
		render :layout => false
	end
	
	def user_redirection
		if user_signed_in?
			redirect_to dashboard_path		
		end
	end

	def user_prevention
		unless user_signed_in?
			redirect_to home_path
		end
	end

end
