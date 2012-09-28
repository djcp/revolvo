var FeedItemView = Backbone.View.extend({
  tagName: 'article',
  initialize: function(){},
  events: {
    "click a.show": "show_embiggened"
  },
  show_embiggened: function(){
    this.$el.find('.content').html(this.model.content());
  },
  render: function(){
    this.$el.html(JST['feed_items/show']({ model: this.model}));
    return this;
  }
});
