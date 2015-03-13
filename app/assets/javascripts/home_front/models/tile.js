( function () {
  HomeFront.Tile = Backbone.Model.extend({
    url: function () {
      return "/tiles/" + this.id;
    },

    sync: function () {
      return Backbone.sync("update", this);
    }
  })
})()
