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

        ["upgrading",
         "upgradable",
         "maxed"
        ].each do |status|
          define_method status do |&block|
            with_status(status, &block)
          end
        end

        def with_status(status, &block)
          buildings.select { |building| building.status == status }.each(&block)
        end
      end
    end
  end
end
