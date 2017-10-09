class ArticlesController < ApplicationController
	def index
		@articles = Article.limit(5)
	end
	def show
		@article = Article.find(params[:id])
	end
	def edit
		@article = Article.find(params[:id])
	end
	def update
		@article = Article.find(params[:id])

		if @article.update(title: params[:article][:title], body: params[:article][:body])
			flash[:success] = "Update article #{@article.id} successully."
			redirect_to article_path(@article.id)
			render :edit
		else
			flash[:error] = "Cannot delete article #{@article.id}."
		end
	end
	def destroy
		@article = Article.find(params[:id])
	end
end
