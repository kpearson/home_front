//= require ./tile_show_view

( function () {
  HomeFront.TileView = Backbone.View.extend({
    tagName: "li",

    initialize: function (options) {
      options.parentView.$el.append(this.$el);
      this.tileView = new HomeFront.TileShowView({
        model: this.model,
        parentView: this
      })
    },

    render: function () {
      this.tileView.render();
      return this;
    },

    renderEdit: function () {
      this.tileView = new HomeFront.TileEditView({
        model: this.model,
        parentView: this
      })
      this.render();
    },

    renderShow: function () {
      this.tileView = new HomeFront.TileShowView({
        model: this.model,
        parentView: this
      })
      this.render();
    }
  })
})()
