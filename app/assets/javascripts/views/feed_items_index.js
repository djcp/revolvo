var FeedItemsIndexView = Backbone.View.extend({
  template: JST['feed_items/index'],
  tagName: 'section',
  render: function(){
    index_view = this;
    this.collection.each(function(feed_item){
      var itemView = new FeedItemView({model: feed_item});
      $(index_view.$el).append(itemView.render().el);
    });
    return this;
  }
});
