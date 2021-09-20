class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    flash[:notice] = "You have created book successfully."
    redirect_to book_path(@book.id)
  end
  def show
    @book = Book.new
    @ubook = Book.find(params[:id])
    @user = User.find(@ubook.user_id)
  end
  def index
    @books = Book.all
    @user = User.find(current_user.id)
    @book = Book.new
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    flash[:notice] = "You have updated book successfully."
    redirect_to book_path(@book.id)
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end

end
