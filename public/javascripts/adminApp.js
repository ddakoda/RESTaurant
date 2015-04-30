var app = app || {};

$(document).ready(function(){

app.foods = new app.FoodCollection({
  model: app.FoodModel
})

app.foods.fetch();

  $('#submit-food').on('click', function(){
    console.log('New type of coffee avail!!');

    $.ajax({
      method: 'post',
      url: '/api/foods',
      data: {food: {name: $('#food').val(), cents: $('#cents').val(), cuisine: $('#cuisine').val() } },
      success: function(){
        app.foods.fetch( {reset: true} );
      }
  });
});
});
