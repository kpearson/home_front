( function () {
  HomeFront.TileBoardView = Backbone.View.extend({
    el: "#tile-board",

    render: function () {
      // render all of the existing tiles
      // add a link to make a new tile
      // when the link is clicked, add a form to the page
      // the form will be represented by a NewTileFormView
      // when the button in the form is clicked
      // - make a new model (new HomeFront.Tile)
      // - set the attributes on the model to the form fields (using the same method as the edit form)
      // - call sync on the model
      // this assumes that Tile#sync does the right thing when the Tile is new
      // (right now it assumes that the Tile exists and calls Backbone.sync with "update")
      // when the sync call is successful (i.e. .then(...)) we need to add the new tile to the TileCollection
      // then we need to tell the TileCollection to re-render itself
    }
  })
})()
