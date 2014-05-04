require 'villages/presenters/collection'

describe ClashOfPlans::Villages::Presenters::Collection do
  context "getting the buildings grouped by status" do
    it "exposes those with status 'upgrading'" do
      upgrading = double("upgrading", status: "upgrading")
      upgradable = double("upgradable", status: "upgradable")
      maxed = double("maxed", status: "maxed")
      buildings = [upgrading, upgradable, maxed]

      presenter = ClashOfPlans::Villages::Presenters::Collection.for(buildings)
      expect{ |b| presenter.upgrading(&b) }.to yield_successive_args(upgrading)
    end

    it "exposes those with status 'upgradable'" do
      upgrading = double("upgrading", status: "upgrading")
      upgradable = double("upgradable", status: "upgradable")
      maxed = double("maxed", status: "maxed")
      buildings = [upgrading, upgradable, maxed]

      presenter = ClashOfPlans::Villages::Presenters::Collection.for(buildings)
      expect{ |b| presenter.upgradable(&b) }.to yield_successive_args(upgradable)
    end

    it "exposes those with status 'maxed'" do
      upgrading = double("upgrading", status: "upgrading")
      upgradable = double("upgradable", status: "upgradable")
      maxed = double("maxed", status: "maxed")
      buildings = [upgrading, upgradable, maxed]

      presenter = ClashOfPlans::Villages::Presenters::Collection.for(buildings)
      expect{ |b| presenter.maxed(&b) }.to yield_successive_args(maxed)
    end
  end
end
