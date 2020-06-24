class BooksController < ApplicationController
  def index
    @les_livres = Book.all
  end

  def create
    Book.create title: params[:title]
    redirect_to "/books"
  end

  def show
    @le_livre = Book.find(params[:id])
  end

  def update
    @le_livre = Book.find(params[:id]).update  title: params[:title]
    redirect_to "/books/#{params[:id]}"
  end
end
