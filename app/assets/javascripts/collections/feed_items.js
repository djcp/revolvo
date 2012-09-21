var FeedItems = Backbone.Collection.extend({
  model: FeedItem,
  url: '/feed_items'
});
