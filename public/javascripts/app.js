var app = app || {};

$(document).ready(function(){

  app.foods = new app.FoodCollection({
    model: app.FoodModel
  })

  app.parties = new app.PartyCollection({
    model: app.PartyModel
  })

  app.guests = new app.GuestCollection({
    model: app.GuestModel
  })

  app.orders = new app.OrderCollection({
    model: app.OrderModel
  })

  app.receipts = new app.ReceiptCollection({
    model: app.ReceiptModel
  })

  app.foodListPainter = new app.GeneralListView({
    //modelView: app.FoodView,
    collection: app.foods,
    el: $('#menu-list'),
  });

  app.partyListPainter = new app.GeneralListView({
    //modelView: app.PartyView,
    collection: app.parties,
    el: $('#party-list'),
  });

  app.foods.fetch();
  app.parties.fetch();

  $('#place-order').on('click', function(){

    var partyId = app.partySelection.get('id');  // Obtain the id from the selected party
    var foodId = app.foodSelection.get('id');   // Obtain the id from the selected food
    var guestId = app.guestSelection.get('id'); // Obtain the id from the selected guest
    var orderId = app.orderSelection.get('id'); // Obtain the id from the selected order
    var receiptId = app.receiptSelection.get('id'); // Obtain the id from the selected receipt

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
