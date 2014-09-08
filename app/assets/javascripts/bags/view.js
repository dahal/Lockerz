Lockerz.Bags.View = function(){}

Lockerz.Bags.View.prototype = {
  customerName: function(){
    return $('#bag_customer_name').val()
  },

  lockerSize: function(){
    return $('#locker_size').val()
  },

  printReceipt: function(info){
    debugger
    $('.checkin-name').append(info.name)
    $('.checkin-locker').append(info.locker)
    $('.receipt').show()
    // console.log('what')
  }
}