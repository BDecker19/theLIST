class UserStepsController < ApplicationController
include Wicked::Wizard
  steps :personal, :social
  
	def show
	    @user = current_user
	  	render_wizard
	end

  	def update
	  @user = current_user
	  @user.attributes = user_params
	  render_wizard @user
	end

		def user_params
	        params[:user].permit(:name, :date_of_birth, :bio)
	    end

end
