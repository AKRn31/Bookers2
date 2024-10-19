class UsersController < ApplicationController
  def new
  end

  def edit
  end

  def show
    @user=User.find(params[:id])
    
  end

  def index
    @users=User.all
  end
  
 
 private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end