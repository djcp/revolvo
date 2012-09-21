class FeedItem < ActiveRecord::Base

  belongs_to :feed

  attr_accessible :title, :content, :published, :feed

  validates :title, presence: true
  validates :link, presence: true, format: { with: Revolvo::Application.config.url_regex }

end
