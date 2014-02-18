Feature: Account creation 
As an unauthorized user
I want to sign up with my details
So that I can login

	Scenario: Successful account creation

	Given I am on the "new user registration" page
	When I fill in "user[email]" with "test@gmail.com"
	And I fill in "user[password]" with "12345678"
	And I fill in "user[password_confirmation]" with "12345678"
	And I press "Sign up"
	Then I should be on the "home" page with params ""
	And I should see "test@gmail.com"

	Scenario: Unsccessful account creation
	Given I am on the "new user registration" page
	When I fill in "user[email]" with "test@gmail.com"
	And I fill in "user[password]" with "1234567"
	And I fill in "user[password_confirmation]" with "123456"
	And I press "Sign up"
	Then I should be on the "user_registration" page with params ""
	And I should see "error"

