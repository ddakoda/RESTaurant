console.log('coffee, on coffee, on coffee');

var foodModel = Backbone.Model.extend();

var foodTemplate = $('#food-template').html();

var foodCollection = Backbone.Collection.extend();

var foodView = Backbone.View.extend({
  tagName: "p",
  className: "food",
  template: _.template(foodTemplate),
  initialize: function() {
    console.log("view == initialized");
    this.listenTo(this.model, "change", this.render);
  },
  render: function() {
    console.log("view == rendered");
    var data = this.model.attributes;
    var tpl = this.template(data);
    this.$el.html(tpl);
    $("#food-container").append(this.$el.html());
  }
});


$(document).ready(function(evt) {

  var foodModel = new foodModel();
  foodModel.url = '/api/food';

  var foodCollection = new foodCollection();
  foodCollection.url = '/api/food';
  });

  foodCollection.fetch();
});
//
// // define an app namespace
// var app = {};
// // get our template as a string
// app.FormTemplate = $('#form-template').html();
// // define a backbone view
// app.FormView = Backbone.View.extend({
//   tagName: "section",
//   className: "styled-form",
//   template: _.template(app.FormTemplate),
//   events: {
//     'click button': 'submit'
//   },
//   initialize: function() {
//     this.render();
//   },
//   render: function() {
//     // var data = this.model.attributes
//     var data = {
//       id: "myButton",
//       submitValue: "Submit Food"
//     };
//     // render the html with data on the EL
//     this.$el.html(this.template(data));
//     // append this EL to the body
//     $('body').append(this.$el);
//   },
//   submit: function() {
//     console.log("Your form was submitted");
//     var options = {
//       name: $('#name').val(),
//       cents: $('#cents').val(),
//       cuisine: $('#cuisine').val()
//     };
//     console.log(options.name);
//     app.myCollection.create(options);
//   }
// });
//
// // once the full DOM has loaded...
// $(document).ready(function() {
//
//   app.myFormView = new app.FormView();
//
// });
