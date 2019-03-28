class ArticlesController < ApplicationController

  def index
    @articles=Articles.all
  end

  def new
    @article=Articles.new
  end
  def create
    #render plain: params[:articles].inspect
    @article=Articles.new(articles_param)

    if @article.save
      flash[:notice]="Articles was successfully created "

      redirect_to article_path(@article)

    else
      render 'new'
    end

  end

  def show
    @article=Articles.find(params[:id])
  end

  def edit
    @article=Articles.find(params[:id])
  end

  def update
    @article=Articles.find(params[:id])
    if @article.update(articles_param)
      flash[:notice]="Articles was successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article=Articles.find(params[:id])
    @article.destroy
    flash[:notice]="Article was successfully deleted"
    redirect_to articles_path
  end

  private
    def articles_param
      params.require(:articles).permit(:title,:description)
    end

end

#controller modified again

