Lockerz.Bags.Controller = function(view){
  this.view = view
}

Lockerz.Bags.Controller.prototype = {
  init: function(){
    this.bindListeners()
  },

  bindListeners: function(){
    $('.new_bag').on('submit', function(e){
      e.preventDefault()
      this.createNewBag()
    }.bind(this))
  },

  createNewBag: function(){
    $.ajax({
      url: '/bags',
      type: 'POST',
      data: {
        customer: this.view.customerName(), 
        size: this.view.lockerSize()}
    }).done(function(checkin){
      this.view.printReceipt(checkin)
    }.bind(this))
  }
}
