class HomeController < ApplicationController

  def home
    # @featured_article = Article.most_recent[0]
    @categories_by_priority = Category.ordered_by_priority.all

    @articles = Article.all.map do |article| 
      article if article.votes.max()
    end 
    
    @featured = Article.featured
    @featured_recent = Article.featured_recent
    # if @featured.votes.count.zero?
    #   @featured = Article.most_recent[0]
    # end
    
  end

end
