Feature: As a user I would like to convert my units

  Scenario: When I tap on menu item I should see left side menu
    Given I land on home screen
    When I press on menu button
    Then I should see left side menu

  Scenario: I should be able to open my conversion screen
    Given I land on home screen
    When I press on menu button
    And I press on conversions
    Then I land on conversions screen

  @wip
  Scenario: I should be able to convert inch to meter
    Given I land on home screen
    When I press on menu button
    And I press on length
    And convert 5 inch to meters
    Then I'm getting x meters
