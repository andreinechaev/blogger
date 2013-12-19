class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :admin?

  protected 
  	def authorize
  		unless admin?
  			flash.now[:notice] = "You have successfully logged out."
  			redirect_to posts_path
  			false	
  		end
    end	

  	def admin?
  		session[:password] == "root12"
 	 end
end
