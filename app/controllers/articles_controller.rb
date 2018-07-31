class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  	@categories = Category.all
  end

  def create
  	Article.create title: params[:title], category_id: params[:category_id]
  	redirect_to "/articles"
  end

  def show
  @article = Article.find(params[:id])
  @comments = @article.comments
  end

  def update
  Article.find(params[:id]).update title: params[:title], content: params[:content]
  redirect_to "/articles/#{params[:id]}"
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to "/articles"
  end

  def comment
    @comment = Comment.create content: params[:content], author: params[:author], article_id: params[:id]
    redirect_to "/articles/#{params[:id]}"
  end
end
