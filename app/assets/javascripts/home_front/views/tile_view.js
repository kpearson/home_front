( function () {
  HomeFront.TileView = Backbone.View.extend({
    tagName: "div",

    className: "tile",

    template: _.template(
      "<%= title %>"+
      "<ul>"+
        "<% links.forEach(function(link) { %>"+
          "<li><a href=\"<%= link.url %>\"><%= link.description %></a></li>"+
        "<% }) %>"+
      "</ul>"
    ),

    initialize: function (options) {
      options.parentView.$el.append(this.$el);
    },

    render: function () {
      this.$el.html(this.template(this.model.attributes));
      return this;
    }
  })
})()
