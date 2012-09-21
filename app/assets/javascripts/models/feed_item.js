var FeedItem = Backbone.Model.extend({
  title: function(){
    return this.get('title');
  },
  id: function(){
    return this.get('id');
  }
});
