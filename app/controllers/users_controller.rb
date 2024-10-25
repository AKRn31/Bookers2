class UsersController < ApplicationController
  def new
  end

  def edit
    @user=current_user
  end

  def show
    @user= User.find(params[:id])
    @books=@user.books
  end

  def index
    @users=User.all
    @book=Book.new
  end
  
 
 private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end