class RssFeedsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @rss_feed_items = fetch_rss
  end

  private

  def fetch_rss
    require "rss"
    require "open-uri"
    

    # url = 'http://rss.cnn.com/rss/edition.rss'
    # url = 'https://www.rti.org.tw/rss'
    url = 'https://en.rti.org.tw/rss'
    # url = 'https://us10.campaign-archive.com/feed?u=ff75159b68a061d33b02147b4&id=749ca5c17f'
    rss_content = URI.open(url)
    rss = RSS::Parser.parse(rss_content, false)
    rss.items
  end
end
