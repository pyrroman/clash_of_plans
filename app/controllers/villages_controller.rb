Building = Struct.new :name, :status, :level, :max_level

class VillagesController < ApplicationController
  def my_village
    @buildings = Object.new
    def @buildings.upgrading(&block)
      [ Building.new("Mortar", "upgrading", 4, 5),
        Building.new("Wizard Tower", "upgrading", 3, 4)
      ].each(&block)
    end
    def @buildings.upgradable(&block)
      [ Building.new("Town Hall", "upgradable", 7, 10)
      ].each(&block)
    end
    def @buildings.maxed(&block)
      [ Building.new("Mortar", "maxed", 5, 5)
      ].each(&block)
    end
  end
end
