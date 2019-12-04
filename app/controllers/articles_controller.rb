class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @like =  current_user.likes.find_by(article_id: @article.id)
  end
end
