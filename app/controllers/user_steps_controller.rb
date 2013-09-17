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


	# PRIVATE METHODS
	private

	def user_params
        params[:user].permit(:name, :date_of_birth, :bio)
    end

	def redirect_to_finish_wizard (options = nil)
	  current_user.profile_complete = true;
	  current_user.save
	  redirect_to root_url, notice: "Thanks for signing up."
	end


end
