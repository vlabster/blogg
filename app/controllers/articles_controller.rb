class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

	
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
   @article = Article.new(article_params)
    if  @article.save
      @article = new_chpu_path
      redirect_to @article 
    else
      render 'new'
    end
  end
 
  def update
   @article = Article.find(params[:id])
    if @article.update(article_params)
      @article = id_statya_chpu_path
      redirect_to @article 
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to new_chpu_path
  end







 
private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
