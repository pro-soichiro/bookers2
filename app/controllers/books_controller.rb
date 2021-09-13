class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @user = User.find(params[:id])
  end
  def index
    @books = Book.all
    @user = User.find(params[:id])
  end

  
  
end
