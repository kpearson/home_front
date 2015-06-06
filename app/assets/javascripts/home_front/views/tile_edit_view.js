//= require ../templates/tile_edit_view
//= require ../../jquery_ext

( function () {
  HomeFront.TileEditView = Backbone.View.extend({

    initialize: function (options) {
      var _this = this
      this.parentView = options.parentView;
      this.$el = this.parentView.$el;
      this.template = JST["home_front/templates/tile_edit_view"]
      this.$el.on("click", "button", function (event) {
        event.preventDefault();
        var formData = _this.$el.find("form").serializeObject();
        _this.model.set(formData.tile);
        _this.model.sync().then(function() {
          _this.parentView.renderShow();
        })
      })
    },

    render: function () {
      this.parentView.$el.html(this.template(this.model.attributes));
      return this;
    }
  })
})()
