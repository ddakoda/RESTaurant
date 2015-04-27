console.log('coffee, on coffee, on coffee');

var foodModel = Backbone.Model.extend();

var foodTemplate = $('#food-template').html();

var foodCollection = Backbone.Collection.extend();

// var foodView = Backbone.View.extend({
//   tagName: "f",
//   className: "food",
//   template: _.template(foodTemplate),
//   initialize: function() {
//     console.log("view == initialized");
//     this.listenTo(this.model, "change", this.render);
//   },
//   render: function() {
//     console.log("view == rendered");
//     var data = this.model.attributes;
//     var tpl = this.template(data);
//     this.$el.html(tpl);
//     $("#food-container").append(this.$el.html());
//   }
// });
// BECAUSE I CANNOT LISTEN TO DIRECTIONS.

$(document).ready(function(evt) {

  var foodModel = new foodModel();
  foodModel.url = '/api/food';

  var foodCollection = new foodCollection();
  foodCollection.url = '/api/food';
  });

  foodCollection.fetch();
});
