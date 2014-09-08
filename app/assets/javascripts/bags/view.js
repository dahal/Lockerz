Lockerz.Bags.View = function(){}

Lockerz.Bags.View.prototype = {
  customerName: function(){
    return $('#bag_customer_name').val()
  },

  lockerSize: function(){
    return $('#locker_size').val()
  },

  printReceipt: function(info){
    console.log(info)
  }
}