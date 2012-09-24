var Revolvo = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function(data){
    var feed_items = new FeedItems(data.feed_items);
    console.log(feed_items);
    new FeedItemRouter({ feed_items: feed_items });
    Backbone.history.start();
  }
};


