require 'spec_helper'
require 'clash_of_plans/villages/presenters/collection'

describe VillagesController do
  describe "GET /my_village" do
    it "uses a buildings collection presenter" do
      buildings_presenter = double

      ClashOfPlans::Villages::Presenters::Collection.stub(:for) { buildings_presenter }

      get :my_village
      expect(assigns(:buildings)).to be(buildings_presenter)
    end
  end
end
