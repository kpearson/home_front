( function () {
  HomeFront.TileGithubShowView = Backbone.View.extend({

    initialize: function (options) {
      var _this = this
      this.parentView = options.parentView;
      this.$el = this.parentView.$el;
      this.$el.one("click", "github", function(){
        _this.parentView.renderGithubShow();
      })
    },

    template: _.template("<a href='https://github.com/login/oauth/authorize' class='github'>github</a>"),

    render: function () {
      this.parentView.$el.html(this.template(this.model.attributes));
      return this;
    },

  })
})()
