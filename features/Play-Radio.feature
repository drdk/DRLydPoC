Feature: Play Radio

  Scenario: Play P1
    Given I am on the DR LYD app
    When I go to the Live tab
    And I find "P1" radio channel and move it to the centre
    And I touch the "P1" card
    Then radio channel "P1" should begin playing
