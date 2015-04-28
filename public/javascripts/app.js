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

});
