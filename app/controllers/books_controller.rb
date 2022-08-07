class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book = Book.find(params[:id])
    @user = @Book.user
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
