class BooksController < ApplicationController
  before_action :find_book,only:
        [:show,:edit,:update,:delete]
  def index
    @books = Book.all.order("created_at DESC")
  end
  def add
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
      if @book.save
        redirect_to books_path
      else
        render 'new'
      end
  end
  def show
  end
  def edit
  end
  def update
      if @book.update(book_params)
        redirect_to @book
      else
        render 'edit'
      end
  end
  def delete
    @book.destroy
        redirect_to books_path
  end

  private
  def find_book
    begin
      @book = Book.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to books_path
    end
  end

  def book_params
    params.require(:book).permit(:title,
          :author,:published_date,
          :genre,:publisher,:isbn,:description,
          :cover_image_url)
  end

end
