class BooksController < ApplicationController
  def index
    @les_livres = Book.all
    @categories = Category.all
  end

  def create
    Book.create(title: params[:title], category_id: params[:category_id])
    redirect_to "/books"
  end

  def show
    @le_livre = Book.find(params[:id])
  end

  def update
    @le_livre = Book.find(params[:id])
    if @le_livre.update(title: params[:title])
      redirect_to "/books/#{params[:id]}"
    else
      render :show
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end
