class SessionsController < ApplicationController
  def new
     if (session[:current_user]) 
        redirect_to posts_path 
     else
        @user = User.new
     end  
  end
end