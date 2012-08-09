Feature: Sign in user
  In order to access protected pages
  As an administrator
  I need to sign in

  Scenario: Display sign in page
    Given I am an administrator
    When I am signing in
    Then the sign in page is shown
    And there is an email field
    And there is a password field
    And there is a "Sign In" button

  Scenario: Redirect back to sign in page
    Given I am an administrator
    And I am signing in
    When I sign in with invalid details
    Then the sign in page is shown
    And there is an invalid details flash