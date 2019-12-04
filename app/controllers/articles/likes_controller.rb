class Articles::LikesController < ApplicationController

  def create
    current_user.likes.find_or_create_by(article_id: params[:article_id])
    redirect_to article_path(params[:article_id])
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    redirect_to article_path(params[:article_id])
  end

end
