class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create

    @article = Article.new(title: params[:article][:title], body: params[:article][:body])

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def new 

    @article = Article.new

  end

  def edit
    @article = Article.find(params[:id])
  end

  
  def show
    @article = Article.find(params[:id])
  end

  def update 
  end

  def destroy
  end

end
