var FeedsRouter = Backbone.Router.extend({
  routes: {
    'feeds/:id': 'show',
    '': 'index'
  },
  show: function(){
  },
  initialize: function(data){
    this.collection = data.feeds;
  },
  index: function(){
    var view = new FeedIndexView({ collection: this.collection });
    $('#feeds').html(view.render().$el);
  }
});
