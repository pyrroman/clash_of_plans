Feature: Viewing my village

  Scenario: My village has a new level 1 town hall
    Given My village has a new level 1 town hall
    When I go to my village page
    Then I should see town hall 1 buildings available

  Scenario: I have a level 1 town hall with some upgrades
    Given My village has a level 1 town hall with some upgrades
    When I go to my village page
    Then I should see my upgrades separate from the remaining available buildings

