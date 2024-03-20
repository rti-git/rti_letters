class SelectArticlesController < ApplicationController
  def index
    @rss_feed_items = params[:rss_feed_items] || []
    #@rss_articles = Article.all
  end

  def create 
    selected_article_ids = params[:selected_articles_ids]
    #selected_articles = Article.find(selected_article_ids)
    @selected_articles = @rss_feed_items.select { |article| selected_article_ids.include?(article.id) }
  end

end
