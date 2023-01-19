Feature: Sign In Feature

  @SignIn
  Scenario: Verify user can sign in into Retail Application
    Given User is on retail website
    When User click On Signin  option
    And User enter email 'tester2@test.com' and password 'Tester@143'
    And User click on login button
    Then User should be logged in into Account

  #
  @CreateNewAccount
  Scenario: Verify user can create an account into Retail Website
    Given User is on retail website
    When User click on Sign in  option
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name               | email            | password    | confirmPassword |
      | Mohammad Stanikzai | tester4@test.com | Tester@143! | Tester@143!     |
    And User click on SignUp button
    Then User should be logged into account page
