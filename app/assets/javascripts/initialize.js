$(document).ready(function(){

  console.log("Welcome to Vegas Hotel!")
  var view = new Lockerz.Bags.View()
  var controller = new Lockerz.Bags.Controller(view)
  controller.init()

})