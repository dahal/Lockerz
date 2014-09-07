require 'rails_helper'

describe Locker do
  let(:awesome_locker) {FactoryGirl.create(:locker)}
  context "#Validation" do

    it "Availability of each lockers must be TRUE by default" do
      expect(awesome_locker.available).to eq(true)
    end

    it "Each Lockers must have names" do
      expect(awesome_locker).to validate_presence_of(:name) 
    end

    it "Each Lockers should have unique names" do
      new_locker = Locker.create(name: "S100")
      expect(new_locker).to validate_uniqueness_of(:name) 
    end

    it "Locker should have names starting with either S, M, L and number between 1..1000" do
      new_locker = Locker.create(name: "A100")
      name_regex = /^(S|M|L)([1-9][0-9]{0,2}|1000)(,([1-9][0-9]{0,2}|1000))*$/
      expect(awesome_locker.name).to match(name_regex)
      expect(new_locker.name).not_to match(name_regex)
    end
  end
end
