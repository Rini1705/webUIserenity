Feature: User be able to login
  As user
  I want to see home page
  So that I can buy product

  Scenario: Login with valid credentials
    Given I am on the login page
    When I input valid username
    And I input valid password
    And I click login button
    Then I am on the home page

    Scenario: As user, I have beed locked out
      Given I am on the login page
      When I input locked username
      And I input valid password
      And I click login button
      Then I can see error message "Epic sadface: Sorry, this user has been locked out"

