var FeedItemView = Backbone.View.extend({
  tagName: 'article',
  render: function(){
    this.$el.template('feed_items/show');
    this.$el.find('h3.title').text(this.model.title());
    return this;
  }
});
