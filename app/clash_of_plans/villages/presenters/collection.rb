module ClashOfPlans
  module Villages
    module Presenters
      class Collection
        def self.for(buildings)
          new(buildings)
        end

        attr_reader :buildings

        def initialize(buildings)
          @buildings = buildings
        end

        def upgrading(&block)
          buildings.select { |building| building.status == "upgrading" }.each(&block)
        end

        def upgradable(&block)
          buildings.select { |building| building.status == "upgradable" }.each(&block)
        end

        def maxed(&block)
          buildings.select { |building| building.status == "maxed" }.each(&block)
        end
      end
    end
  end
end
