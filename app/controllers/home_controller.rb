class HomeController < ApplicationController
  def index
		@articles = Article.limit(5)
	end
end
