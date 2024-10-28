class UsersController < ApplicationController

  def edit
    @user=User.find(params[:id])
  end

  def show
    @user= User.find(params[:id])
    @books=@user.books
  end

  def index
    @users=User.all
    @book=Book.new
  end
  
  def update
    user=User.find(params[:id])
    user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path
  end
  
 private

  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
  
end