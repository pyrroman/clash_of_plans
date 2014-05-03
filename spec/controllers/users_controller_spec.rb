require 'spec_helper'

describe UsersController do
  describe "GET my_village" do
    it "uses a village presenter" do
      village_presenter = stub

      stub_const("ClashOfPlans::Users::Presenters::MyVillage", stub(for: village_presenter))

      get :my_village
      expect(assigns(:village)).to be(village_presenter)
    end
  end
end
