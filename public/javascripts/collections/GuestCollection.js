var app = app || {};

app.GuestCollection = Backbone.Collection.extend({
  url: '/api/guests'
});
