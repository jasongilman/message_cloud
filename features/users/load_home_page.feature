Feature: Load Home Page
  In order to access the messagecloud website
  as a user
  I should be able to load the home page
  
  Scenario: Load the home page while not logged in
  Given I am on the home page
  Then I should see "messagecloud"
  And I should see "Your personal cloud of messages"
  And I should see "Sign up"
  And I should see "Sign in"
  And I should not see "Sign out"