var app = app || {};

app.ReceiptCollection = Backbone.Collection.extend({
  url: '/api/receipts'
});
