class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @commentable_type = "User"
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      # success
      login!(@user)
      flash[:notices] = ["Successfully signed up!"]
      redirect_to "/" #root_url
    else
      # failure
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end
  
  private
end
