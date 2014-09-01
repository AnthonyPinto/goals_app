class SessionsController < ApplicationController
  def new
    @user = User.new()
    render :new
  end

  def create
    @user = User.find_by_credentials(user_params)
    
    if @user
      # success
      login!(@user)
      flash[:notices] = [ "Successfully signed in!" ]
      redirect_to "/" # root_url
    else
      # failure
      flash.now[:errors] = [ "Invalid login!" ]
      render :new
    end
    
  end

  def delete
    current_user.reset_session_token!
    session[:session_token] = nil
    redirect_to new_session_url
  end
  
  
  
end
