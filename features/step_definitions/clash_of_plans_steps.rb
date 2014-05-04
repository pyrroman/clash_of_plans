Given(/^my village has no buildings$/) do
end

Given(/^My village has some buildings$/) do
  @buildings = [ Building.new("Town Hall", "upgradable", 7, 10),
                 Building.new("Mortar", "upgrading", 4, 5),
                 Building.new("Wizard Tower", "upgrading", 3, 4),
                 Building.new("Mortar", "maxed", 5, 5)
               ]
end

When(/^I go to my village page$/) do
  visit my_village_villages_url
end

Then(/^I should see that my village has no buildings$/) do
  page.should have_content("Your village has no buildings")
end

Then(/^I should see the buildings in my village grouped by status$/) do
  @buildings.each do |building|
    within(".#{building.status}") do
      page.should have_content("#{building.name} (#{building.level}/#{building.max_level})")
    end
  end
end
