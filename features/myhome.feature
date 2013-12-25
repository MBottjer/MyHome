Feature: Signing up, signing in and signing out
  As a user who wants to be able to personalise his homepage
  In order to do so
  I need to be able to sign up

  Scenario: Signing up
    Given I am on the homepage
    When I sign up 
    Then I should see "Welcome! You have signed up successfully"

  Scenario: Signing in 
    Given I have signed up
    When I sign in 
    Then I should see "Signed in successfully"

  Scenario: Signing out
    Given I have signed in 
    When I sign out
    Then I should see "You have signed out successfully"
