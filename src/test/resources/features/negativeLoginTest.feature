Feature: Negative Login test - The user should NOT able to login with invalid credentials

  Background: Go to home page login
    Given The user is on the login page
@negativeScenario
  Scenario Outline:Negative Scenario - The user should NOT able to login with invalid credentials
    When The user enters "<invalidUsername>" and "<invalidPassword>" and click login button
    Then verify that invalid"<message>"

    Examples:
      | invalidUsername | invalidPassword | message                                |
      | ktb2            |                 | Please fill out Username and Password. |
      |                 | Test1234        | Please fill out Username and Password. |
      |                 | invalidPassword | Please fill out Username and Password. |
      |                 |                 | Please fill out Username and Password. |
      | ktb2            | invalidPassword | Wrong password.                        |
      | notExistUser    | invalidPassword | User does not exist.                   |
      | ktn21           | Test1234        | User does not exist.                   |