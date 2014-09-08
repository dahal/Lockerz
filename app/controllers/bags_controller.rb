class BagsController < ApplicationController

  def index
    @bag = Bag.new
    @locker = Locker.new
    @search_locker = Locker.search(params['search'])
    if @search_locker != nil
      @search_bag = @search_locker.bag
    end
    render 'index'
  end

  def create
    locker_size = params['size']
    customer_name = params['customer']
    @locker = Locker.where(size: locker_size, available: true).first
    @locker.update(available: false)
    @bag = Bag.create(customer_name: customer_name, 
                      locker_id: @locker.id)

    render json: {name: customer_name, 
                  locker: @locker.name
                  }.to_json
  end

end
