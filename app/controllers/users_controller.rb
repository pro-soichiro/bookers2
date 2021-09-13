class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = Book.all
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image_id)  
  end
end
