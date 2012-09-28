var FeedItem = Backbone.Model.extend({
  title: function(){
    return this.get('title');
  },
  content: function(){
    return this.get('content');
  },
  id: function(){
    return this.get('id');
  }
});
