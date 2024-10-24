class BooksController < ApplicationController
  def index
    @books=Book.all
    @user=current_user
    @book=Book.new
  end

  def show
    @book=current_user
    @books=Book.find(params[:id])
  end

  def new
    @book=Book.new
  end
  
  def create 
    @book=Book.new(book_params)
    @book.user_id= current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def edit
    @book=Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id) 
  end
  
  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
