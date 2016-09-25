class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
  private
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
 
  def index
		@persona = Personal.all
	end

	def lastcreated
		@persona = Personal.order("created_at DESC").limit(4)
	end
  helper_method :lastcreated
  
end
