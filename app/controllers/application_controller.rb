class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    private   
    #Admin only access method. 
    def check_role
      if current_user && current_user.has_role?(:admin)
        return
      else
        flash[:notice]= "You are not authorised to access the page you sought."
        redirect_to root_path
      end
    end

    #Edit own 
    #def check_role
	#	if Artworks.new.can_edit? current_user
	#		return
	#	else
	#		flash[:alert] = "You are not authorised!"
	#		redirect_to root_path
	#	end
	#end
end
