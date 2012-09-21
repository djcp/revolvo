var FeedItemRouter = Backbone.Router.extend({
  routes: {
    'feed_items/:id': 'show',
    '': 'index'
  },
  show: function(){
  },
  index: function(){
    var view = new FeedItemsIndexView({ collection: FeedItems });
    $('#feed_items').html(view.render().$el);
  }
});
