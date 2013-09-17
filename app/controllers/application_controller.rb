class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


	# root action
	def home
	end

	def test
		# binding.pry
    # render :test_page
	end


  	def after_sign_in_path_for(resource)
        if current_user.profile_complete == true
    		  root_path
    		else 
    			user_steps_path
    		end
	  end

end
