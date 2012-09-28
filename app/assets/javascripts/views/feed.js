var FeedView = Backbone.View.extend({
  tagName: 'article',
  initialize: function(){},
  render: function(){
    this.$el.html(JST['feeds/show']({ model: this.model}));
    return this;
  }
});
