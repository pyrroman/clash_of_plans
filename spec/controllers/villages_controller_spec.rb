require 'spec_helper'

describe VillagesController do
  describe "GET /my_village" do
    it "uses a buildings collection presenter" do
      buildings_presenter = double

      stub_const("ClashOfPlans::Villages::Presenters::Collection", double(for: buildings_presenter))

      get :my_village
      expect(assigns(:buildings)).to be(buildings_presenter)
    end
  end
end
