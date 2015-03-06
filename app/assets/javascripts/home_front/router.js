//= require ./collections/tile_collection
//= require ./views/tile_view
//= require ./views/tile_board_view

(function () {
  HomeFront.Router = Backbone.Router.extend({
    routes: {
      "":   "home"
    },

    initialize: function () {
      window.onRoutesInitialized();
    },

    home: function() {
      var tileBoardView = new HomeFront.TileBoardView;

      var tiles = new HomeFront.TileCollection;
      tiles.reset(HomeFront.initialTiles);
      tiles.models.forEach(function (tile) {
        var tileView = new HomeFront.TileView({
          model: tile,
          parentView: tileBoardView
        });
        tileView.render();
        /*
        tile.on("change", function () {
          tileView.render();
        })
        */
      })
    }
  })
})()

