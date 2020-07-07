class CommentsController < ApplicationController
    def comment
    Book.find(params[:id]).comments.create(
      author: params[:author],
      content: params[:content],
    )

    redirect_to "/books/#{params[:id]}"
  end
end