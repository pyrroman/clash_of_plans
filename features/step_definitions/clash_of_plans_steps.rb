Given(/^I have a new level (\d+) town hall$/) do |town_hall_level|
end

When(/^I go to my village page$/) do
  visit my_village_url
end

Then(/^I should see town hall 1 buildings available$/) do
  page.should have_content("Town Hall Level: 1")
  within(".available_buildings") do
    page.should have_content("Gold Mine (1)")
    page.should have_content("Elixir Collector (1)")
    page.should have_content("Gold Storage (1)")
    page.should have_content("Elixir Storage (1)")
    page.should have_content("Barracks (1)")
    page.should have_content("Army Camp (1)")
  end
end

Given(/^I have a level (\d+) town hall with some upgrades$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see my upgrades separate from the remaining available buildings$/) do
  pending # express the regexp above with the code you wish you had
end
