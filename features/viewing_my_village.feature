Feature: Viewing my village

  Scenario: My village has no buildings
    Given my village has no buildings
    When I go to my village page
    Then I should see that my village has no buildings

  Scenario: My village has some buildings
    Given My village has some buildings
    When I go to my village page
    Then I should see the buildings in my village

