Feature: Login

  @parameters
  Scenario Outline: Verify login and logut functionality with multiple user data
    Given User lands to login page
    When user enters username <username> and password <password>
    And user clicks on login button
    Then user should get a message <login message>
    When User clicks on Signout
    Then User should get a logut message <logout message>
    Examples:
      | username | password | login message      | logout message |
      | selenium | selenium | Login Successfully | logout message |
      | selenium | selenium | Login Successfulli | logout message |
      | tutorial | tutorial | Login Successfully | logout message |

  @parameters
  Scenario Outline: Verify login and logut functionality using records
    Given User lands to login page
    When login with credentials using record <record>
    And user clicks on login button
    Then user should get a message <login message>
    When User clicks on Signout
    Then User should get a logut message <logout message>
    Examples:
      | record | login message      |
      | record1 | Login Successfully |
      | record2 | Login Successfully |
      | record3 | Login Successfully |
      | record4 | Login Successfully |