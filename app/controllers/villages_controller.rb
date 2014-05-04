Building = Struct.new :name, :status, :level, :max_level

class VillagesController < ApplicationController
  def my_village
    buildings = [ Building.new("Mortar", "upgrading", 4, 5),
                  Building.new("Wizard Tower", "upgrading", 3, 4),
                  Building.new("Town Hall", "upgradable", 7, 10),
                  Building.new("Mortar", "maxed", 5, 5)
                ]
    @buildings = ClashOfPlans::Villages::Presenters::Collection.for(buildings)
  end
end
