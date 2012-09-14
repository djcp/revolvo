class FeedItem < ActiveRecord::Base

  belongs_to :feed

  validates :title, presence: true
  validates :link, presence: true, format: { with: Revolvo::Application.config.url_regex }

end
