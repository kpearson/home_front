( function () {
  HomeFront.TileShowView = Backbone.View.extend({

    initialize: function (options) {
      var _this = this
      this.parentView = options.parentView;
      this.$el = this.parentView.$el;
      template: _.template("<a href="https://github.com/login/oauth/authorize" class="github">github</a>")
      this.$el.one("click", "github", function(){
        _this.parentView.renderGithubShow();
      })
    },

    render: function () {
      this.parentView.$el.html(this.template(this.model.attributes));
      return this;
    },

  })
})()
