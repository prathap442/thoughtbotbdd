class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def authenticate
    if signed_in?
    else
      redirect_to sessions_new_path
    end  
  end

  def signed_in?
    if session[:current_user]
      return true
    else
      return false
    end
  end
end
