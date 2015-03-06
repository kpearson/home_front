//= require ./router

(function () {
  new HomeFront.Router();
  Backbone.history.start({pushState: true, root: "/home"})

})()
