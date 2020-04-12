class BooksController < ApplicationController
  def index
  	@book = Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def new
  	@book = Book.new
  end

  def edit
  end

  private
  def book_params
  	params.require(:book).permit(:title,:body)
  end
end
