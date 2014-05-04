require 'spec_helper'
require 'villages/presenters/collection'

describe VillagesController do
  describe "GET /my_village" do
    it "uses a buildings collection presenter" do
      buildings_presenter = double

      ClashOfPlans::Villages.stub(:my_village) { buildings_presenter }

      get :my_village
      expect(assigns(:buildings)).to be(buildings_presenter)
    end
  end
end
