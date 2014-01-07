Feature: Adding relevant links 
  As a person who is interested in having a homepage of relevant links
  In order to have such a thing
  I need to be able to add and remove links specific to me

  Scenario: Adding links
    Given I have signed up and am signed in
    When I customise my links
    Then I should see the links on the homepage