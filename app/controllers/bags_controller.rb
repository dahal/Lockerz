class BagsController < ApplicationController

  def index
    @bag = Bag.new
    @locker = Locker.new
    render 'index'
  end

  def create
    locker_size = params['locker']['size']
    customer_name = params['bag']['customer_name']
    @locker = Locker.where(size: locker_size, available: true).first
    @locker.update(available: false)
    @bag = Bag.create(customer_name: customer_name, 
                      locker_id: @locker.id)
  end

end
