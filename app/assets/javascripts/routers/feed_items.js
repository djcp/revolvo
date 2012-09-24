var FeedItemRouter = Backbone.Router.extend({
  routes: {
    'feed_items/:id': 'show',
    '': 'index'
  },
  show: function(){
  },
  initialize: function(data){
    this.collection = data.feed_items;
  },
  index: function(){
    var view = new FeedItemsIndexView({ collection: this.collection });
    $('#feed_items').html(view.render().$el);
  }
});
