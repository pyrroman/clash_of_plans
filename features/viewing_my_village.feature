Feature: Viewing my village

  Scenario: I have a new level 1 town hall
    Given I have a new level 1 town hall
    When I go to my village page
    Then I should see town hall 1 buildings available

  Scenario: I have a level 1 town hall with some upgrades
    Given I have a level 1 town hall with some upgrades
    When I go to my village page
    Then I should see my upgrades separate from the remaining available buildings

