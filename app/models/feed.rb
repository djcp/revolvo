class Feed < ActiveRecord::Base

  validates :title, presence: true
  validates :rss_url, presence: true, format: { with: /https?:\/\/.+/i }

  has_many :feed_items

end
