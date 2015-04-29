var app = app || {};

$(document).ready(function(){

  app.foods = new app.FoodCollection({
    model: app.FoodModel
  })

  app.parties = new app.PartyCollection({
    model: app.PartyModel
  })

  app.foodListPainter = new app.GeneralListView({
    modelView: app.FoodView,
    collection: app.foods,
    el: $('#food-list'),
  });

  app.partyListPainter = new app.GeneralListView({
    modelView: app.PartyView,
    collection: app.parties,
    el: $('#party-list'),
  });

  app.foods.fetch();
  app.parties.fetch();

  $('#place-order').on('click', function(){

    var partyId = app.partySelection.get('id');
    var foodId = app.foodSelection.get('id');

    $.ajax({
      method: 'post',
      url: '/api/orders',
      data: {order: {party_id: partyId, food_id: foodId} },
      success: function(){
        app.parties.fetch( {reset: true} );

        $('.food-selected').removeClass('food-selected');
        $('.party-selected').removeClass('party-selected');

      }
    });
  });

});
