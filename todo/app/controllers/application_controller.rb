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

  def clear_all_the_user_sessions_timed_out
    User.expired_users.each do |user|
      if(user.email == session[:current_user]['email'])      
        user.destroy
        session[:current_user] = nil 
      end  
    end  
  end
end
