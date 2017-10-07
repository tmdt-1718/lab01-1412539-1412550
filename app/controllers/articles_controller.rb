class ArticlesController < ApplicationController
	def index
		@articles = Article.limit(5)
	end
	def show
		@articles = Article.find(params[:id])
	end
	def edit
		@articles = Article.find(params[:id])
	end
	def update
		@articles = Article.find(params[:id])
	end
	def destroy
		@articles = Article.find(params[:id])
	end
end
