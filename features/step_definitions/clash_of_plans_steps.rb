Village = Struct.new :town_hall
TownHall = Struct.new :level, :available_buildings
Building = Struct.new :name

TownHall1 = TownHall.new(1, [Building.new("Gold Mine"),
                             Building.new("Elixir Collector"),
                             Building.new("Gold Storage"),
                             Building.new("Elixir Storage"),
                             Building.new("Barracks"),
                             Building.new("Army Camp")
                            ])

Given(/^My village has a new level (\d+) town hall$/) do |town_hall_level|
  @my_village = Village.new(TownHall1.dup)
end

When(/^I go to my village page$/) do
  visit my_village_url
end

Then(/^I should see town hall 1 buildings available$/) do
  page.should have_content("Town Hall Level: #{@my_village.town_hall.level}")
  @my_village.town_hall.available_buildings.each do |building|
    within(".available_buildings") do
      page.should have_content("#{building.name} (1)")
    end
  end
end

Given(/^My village has a level (\d+) town hall with some upgrades$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see my upgrades separate from the remaining available buildings$/) do
  pending # express the regexp above with the code you wish you had
end
