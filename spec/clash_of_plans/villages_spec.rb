require 'villages/presenters/collection'
require 'villages'

describe ClashOfPlans::Villages do
  describe '.my_village' do
    it "returns the buildings collection wrapped in a presenter" do
      presenter = double
      ClashOfPlans::Villages::Presenters::Collection.stub(:for) { presenter }

      expect(ClashOfPlans::Villages.my_village).to be(presenter)
    end
  end
end
