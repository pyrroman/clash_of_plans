Building = Struct.new :name, :level
AvailableBuilding = Struct.new :name, :number_available, :availability_limit

TownHall = Struct.new :level, :available_buildings

TownHall1 = TownHall.new(1, [AvailableBuilding.new("Gold Mine", 1, 1),
                             AvailableBuilding.new("Elixir Collector", 1, 1),
                             AvailableBuilding.new("Gold Storage", 1, 1),
                             AvailableBuilding.new("Elixir Storage", 1, 1),
                             AvailableBuilding.new("Barracks", 1, 1),
                             AvailableBuilding.new("Army Camp", 1, 1)
                            ])

class UsersController < ApplicationController
  def my_village
    @village = Object.new
    def @village.town_hall_level
      1
    end

    def @village.buildings
      [Building.new("Gold Mine", 1),
       Building.new("Gold Storage", 1),
       Building.new("Barracks", 1),
       Building.new("Army Camp", 1)
      ]
    end

    def @village.available_buildings
      TownHall1.available_buildings
    end
  end
end
