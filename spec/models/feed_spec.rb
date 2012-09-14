require 'spec_helper'

describe Feed, 'validations' do
  it { should validate_presence_of(:rss_url) }
  it { should validate_presence_of(:title) }

  %w|http://www.example.com http://foo.com HTTPS://barbarbar.com|.each do|good|
    it { should allow_value(good).for(:rss_url) }
  end

  %w|com wrippled 13 ftp://www.foo.org gopher://blitslkriegen.com|.each do|bad|
    it { should_not allow_value(bad).for(:rss_url) }
  end
end

describe Feed, 'relations' do
  it { should have_many(:feed_items) }
end

describe Feed, 'rss validation' do
  it { should_not }
end
