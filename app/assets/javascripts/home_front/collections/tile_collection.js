//= require ../models/tile

(function () {
  HomeFront.TileCollection = Backbone.Collection.extend({
    model: HomeFront.Tile,
    url: "/tiles"
  })
})()
