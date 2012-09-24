var FeedItemView = Backbone.View.extend({
  tagName: 'article',
  initialize: function(){},
  render: function(){
    //this.$el.template('feed_items/show');
    this.$el.html(JST['feed_items/show']({ model: this.model}));
    return this;
  }
});
