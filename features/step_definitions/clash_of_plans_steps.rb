Village = Struct.new :town_hall_level, :buildings
TownHall = Struct.new :level, :available_buildings
Building = Struct.new :name, :level

TownHall1 = TownHall.new(1, [Building.new("Gold Mine", 1),
                             Building.new("Elixir Collector", 1),
                             Building.new("Gold Storage", 1),
                             Building.new("Elixir Storage", 1),
                             Building.new("Barracks", 1),
                             Building.new("Army Camp", 1)
                            ])

Given(/^My village has a new level (\d+) town hall$/) do |town_hall_level|
  @my_village = Village.new(1, [])
end

When(/^I go to my village page$/) do
  visit my_village_url
end

Then(/^I should see town hall 1 buildings available$/) do
  page.should have_content("Town Hall Level: #{@my_village.town_hall_level}")
  TownHall1.available_buildings.each do |building|
    within(".available_buildings") do
      page.should have_content("#{building.name} (1/1)")
    end
  end
end

Given(/^My village has a level (\d+) town hall with some upgrades$/) do |arg1|
  @my_village = Village.new(1, [Building.new("Gold Mine", 1),
                                Building.new("Gold Storage", 1),
                                Building.new("Barracks", 1),
                                Building.new("Army Camp", 1)
                               ])
end

Then(/^I should see my upgrades separate from the remaining available buildings$/) do
  page.should have_content("Town Hall Level: #{@my_village.town_hall_level}")
  @my_village.buildings.each do |building|
    within(".buildings") do
      page.should have_content("#{building.name} (Level 1)")
    end
  end
  TownHall1.available_buildings.each do |building|
    within(".available_buildings") do
      page.should have_content(/#{building.name} \(.\/1\)/)
    end
  end
end
