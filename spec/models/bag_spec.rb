require 'rails_helper'

describe Bag do
  let(:customer_bag) {FactoryGirl.create(:bag)}
  context "#Relationship" do

    it { should belong_to(:locker) }

  end
end
