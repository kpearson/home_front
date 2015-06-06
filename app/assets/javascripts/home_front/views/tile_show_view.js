//= require ../templates/tile_show_view

( function () {
  HomeFront.TileShowView = Backbone.View.extend({

    initialize: function (options) {
      var _this = this
      this.parentView = options.parentView;
      this.$el = this.parentView.$el;
      this.template = JST["home_front/templates/tile_show_view"];
      this.$el.one("click", ".tile-title", function(){
        _this.parentView.renderEdit();
      })
    },

    render: function () {
      this.parentView.$el.html(this.template(this.model.attributes));
      return this;
    },

  })
})()
