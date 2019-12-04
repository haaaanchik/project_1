class Articles::CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params.merge(user_id:current_user.id))
    redirect_to article_path(@article)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to article_path(params[:article_id])
  end


  private

  def comment_params
    params.require(:comment).permit(:name,:body)
  end
end
