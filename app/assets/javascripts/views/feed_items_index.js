var FeedItemsIndexView = Backbone.View.extend({
  render: function(){
    $(this.$el).html('<h3>Feed Items</h3><div class="feed_items"></div>');
    index_view = this;
    this.collection.each(function(feed_item){
      var itemView = new FeedItemView({model: feed_item});
      $(index_view.$el).append(itemView.render().el);
    });
    return this;
  }
});
