require 'spec_helper'

describe FeedItem, 'validations' do
  it { should validate_presence_of(:link) }
  it { should validate_presence_of(:title) }

  ['http://foo.com', 'https://asdfasdf', 'http://www.google.com', 'http://www.google.com/path?query#fragment'].each do|good_link|
    it{ should allow_value(good_link).for(:link) }
  end

  ['hht', 'foo.com', '', '12315'].each do|bad_link|
    it{ should_not allow_value(bad_link).for(:link) }
  end

end

describe FeedItem, 'relations' do
  it { should belong_to(:feed) }
end
