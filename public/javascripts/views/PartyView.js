var app = app || {};

app.PartyView = Backbone.View.extend({

  initialize: function(){
    this.listenTo(this.model,'change', this.render);
    this.listenTo(this.model, 'delete', this.remove);
  },
  template: _.template('<h3><%= table_number %><button class="select-party">Select</button>'),
  tagName: 'li',
  className: 'party',
  render: function(){
    this.$el.append( this.template( this.model.attributes ) );
    this.renderFoodList();
    return this;
  },
  renderFoodList: function(){
    var foods = this.model.get('foods')
    var foodList = $('<ul>');
    for (var i = 0; i < food.length; i++) {
      foodList.append( $('<li>').text( foods[i]['name'] ) );
    }
    this.$el.append(foodList);
  },
  events:{
    'click .select-party': 'selectParty'
  },
  selectParty: function(){
    $('.party-selected').removeClass('party-selected');
    this.$el.addClass('party-selected');
    app.partySelection = this.model;
  }
});

// var app = app || {};
//
// app.PartyView = Backbone.View.extend({
//
//   initialize: function(options){
//     this.modelView = options.modelView;
//     this.listenTo(this.collection,'sync', this.render);
//   },
//   render: function(){
//     var models = this.collection.models;
//     for (var i = 0; i < models.length; i++) {
//       var subView = new this.modelView({model: models[i]});
//       subView.render();
//       this.$el.append( subView.$el );
//       subView.delegateEvents();
//     }
//     return this;
//   }
// });
