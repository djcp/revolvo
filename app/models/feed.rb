class Feed < ActiveRecord::Base
  validates :title, presence: true
  validates :rss_url, presence: true, format: { with: Revolvo::Application.config.url_regex }

  has_many :feed_items

  attr_accessible :rss_url, :title

  def self.needs_updating
    where('next_update_at < ?', Time.now)
  end


  def update_feed_items
    parsed_feed = FeedAbstract::Feed.new(SpiderExternalContent.new(rss_url).body.to_s)
    parsed_feed.items.each do|feed_item|
      fi = FeedItem.find_or_initialize_by_url_and_feed_id(feed_item.link, id)
      fi.attributes = {
        title: feed_item.title, 
        content: feed_item.content, 
        published: feed_item.published.to_time, 
        feed: @feed
      }
      fi.save! if fi.changed?
    end
  end

end
