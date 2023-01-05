Feature: Flights

  Background:
    Given User lands to login page

  Scenario Outline: Schedule a Flight using yaml file
    When login with credentials using record <record>
    And a flight is scheduled using the same record <record>
    Then user should land on this url <url>
    Examples:
      | record  | url |
      | record1 | https://demo.guru99.com/test/newtours/reservation2.php |
      | record2 | https://demo.guru99.com/test/newtours/reservation2.php |
      | record3 | https://demo.guru99.com/test/newtours/reservation2.php |
      | record4 | https://demo.guru99.com/test/newtours/reservation2.php |