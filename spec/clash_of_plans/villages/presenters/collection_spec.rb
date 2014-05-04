require 'villages/presenters/collection'

describe ClashOfPlans::Villages::Presenters::Collection do
  context "getting the buildings grouped by status" do
    let(:upgrading) { double("upgrading", status: "upgrading") }
    let(:upgradable) { double("upgradable", status: "upgradable") }
    let(:maxed) { double("maxed", status: "maxed") }
    let(:buildings) { [upgrading, upgradable, maxed] }
    let(:presenter) { ClashOfPlans::Villages::Presenters::Collection.for(buildings) }

    it "exposes those with status 'upgrading'" do
      expect{ |b| presenter.upgrading(&b) }.to yield_successive_args(upgrading)
    end

    it "exposes those with status 'upgradable'" do
      expect{ |b| presenter.upgradable(&b) }.to yield_successive_args(upgradable)
    end

    it "exposes those with status 'maxed'" do
      expect{ |b| presenter.maxed(&b) }.to yield_successive_args(maxed)
    end
  end
end
