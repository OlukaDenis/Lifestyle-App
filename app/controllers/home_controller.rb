class HomeController < ApplicationController

  def home
    @featured_article = Article.most_recent[0]
    @categories_by_priority = Category.ordered_by_priority.all
  end
end
