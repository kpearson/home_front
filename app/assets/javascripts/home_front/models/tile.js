( function () {
  HomeFront.Tile = Backbone.Model.extend({
    url: function () {
      return "/tiles/" + this.id;
    },

    sync: function () {
      var _this = this
      var jqxhr = Backbone.sync("update", this, {
        attrs: {
          tile: {
            title: this.get('title'),
            links_attributes: (this.get('links') || [])
          }
        }
      });
      jqxhr.then( function(data) {
        _this.set(data.tile)
      })
      return jqxhr
    }
  })
})()
