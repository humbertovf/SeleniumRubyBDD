Feature: Flights

  Background:
    Given User lands to login page

  Scenario Outline: Schedule a Flight using yaml file
    When login with credentials using record <record>
    And a flight is scheduled using the same record <record>
    Then user should get a message <message>
    Examples:
      | record  | message |
      | record1 | https://demo.guru99.com/test/newtours/reservation2.php |
#      | record2 |
#      | record3 |
#      | record4 |