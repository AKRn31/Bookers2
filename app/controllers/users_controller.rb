class UsersController < ApplicationController
  def new
  end

  def edit
  end

  def show
    @user=current_user
    
  end

  def index
    @users=User.all
  end
  
 
 private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end