Feature: Login Test- The user should be able to login valid credential

  Background: Go to home page login
    Given The user is on the login page

  @loginwithoutParameters
  Scenario: Positive Scenario 1 - user should be able to login
    When The user enters valid credentials
    Then verify "Welcome ktbahmet"

  @loginwithParameters
  Scenario: Positive Scenario 2 - user should be able to login
    When The user enters "ktbahmet" and "ahmet1234" and click login button
    Then verify "Welcome ktbahmet"

  @loginwithScenarioOutline
  Scenario Outline:Positive Scenario 3 - user should be able to login
    When The user enters "<username>" and "<password>" and click login button
    Then verify "<welcomeUser>"

    Examples:
      | username | password  | welcomeUser      |
      | ktbahmet | ahmet1234 | Welcome ktbahmet |

  @loginwithDataTableAndScenarioOutline
  Scenario Outline: Positive Scenario 4 - user should be able to login
    When The user enters valid username and password
      | username | <user>     |
      | password | <password> |
    Then verify "<welcomeUser>"

    Examples:
      | user | password | welcomeUser |
      | ktbahmet | ahmet1234 | Welcome ktbahmet |
      | ktb2 | Test1234 | Welcome ktb2 |