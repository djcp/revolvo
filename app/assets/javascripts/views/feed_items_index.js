var FeedItemsIndexView = Backbone.View.extend({
  render: function(){
    $(this.$el).html('<h3>Feed Items</h3><div class="feed_items"></div>');
    console.log(this);
    console.log(this.$el);
    /* $(this.collection).each(function(feedItem){

    });*/
    return this;
  }
});
