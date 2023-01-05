Feature: Registration

  Scenario Outline: User creates account
    Given a user lands on Register page
    When user fill the form with data <data>
    And click on submit button
    Then should be displayed a confirmation message
    Examples:
      | data |
      | register1 |
      | register2 |