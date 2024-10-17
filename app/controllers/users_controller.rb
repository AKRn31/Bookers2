class UsersController < ApplicationController
  def new
  end

  def edit
  end

  def show
    
  end

  def index
    @users=User.all
  end
  
  private
  def user_params
    params.require(:user).permit(:image, :name)
  end
 
end