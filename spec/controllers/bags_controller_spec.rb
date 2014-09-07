require 'rails_helper'

describe BagsController do
  context "#index" do
    let(:awesome_bag) {FactoryGirl.create(:bag)}
    it "render the index view" do
      get :index
      expect(response).to render_template :index  
    end
  end
end
