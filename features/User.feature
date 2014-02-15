Feature: Account creation 
As an unauthorized user
I want to sign up with my details
So that I can login

	Scenario: Successful login

	Given I am on the sign up page
	When I fill in "Email" with "test@gmail.com"
	And I fill in "Password" with "Secret"
	And I fill in "Password confirmation" with "Secret"
	And I press "Sign up"
	Then I should see "test@gmail.com"
	


