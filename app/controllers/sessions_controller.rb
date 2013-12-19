class SessionsController < ApplicationController
  def create
  	session[:password] = params[:password]
  	flash[:notice] = "Successfully login"
  	redirect_to posts_path
  end

  def destroy
  	reset_session
  	flash[:notice] = "Successfully logout"
  	redirect_to login_path
  end

end
