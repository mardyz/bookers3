class BooksController < ApplicationController
  
  def new
  end
  
  def create
    @book = Book.new
    if @book.save
      redirect_to book_path
    else
     render :index
    end
  end
  
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[id])
  end
end
