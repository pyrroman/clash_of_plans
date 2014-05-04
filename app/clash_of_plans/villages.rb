require 'villages/presenters/collection'

Building = Struct.new :name, :status, :level, :max_level

module ClashOfPlans
  module Villages
    def self.my_village
      buildings = [ Building.new("Mortar", "upgrading", 4, 5),
                    Building.new("Wizard Tower", "upgrading", 3, 4),
                    Building.new("Town Hall", "upgradable", 7, 10),
                    Building.new("Mortar", "maxed", 5, 5)
                  ]
      Presenters::Collection.for(buildings)
    end
  end
end
