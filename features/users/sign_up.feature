Feature: Sign Up
  In order to access the features of messagecloud
  as a user
  I should be able to sign up for an account
  
  Scenario: Sign up 
    Given I am on the sign up page
    When I fill in "Username" with "bobby"
    And I fill in "Email" with "bobby@example.com"
    And I fill in "Password" with "mypassword"
    And I fill in "Password confirmation" with "mypassword"
    And I press "Sign up" within "#user_new"
    Then I should be on the home page
    And I should see "bobby" within "#user-navigation"
    And I should see "Sign out" within "#user-navigation"
    
  