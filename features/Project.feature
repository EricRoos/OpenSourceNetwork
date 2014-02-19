Feature: Project CRUD
As an unauthorized user
I want to perform CRUD operations
In order to manage my project


	Scenario: create a project successfully
		Given I am logged in
		And I am on the "new project" page
		When I fill in "project_name" with "test123"
		And I press "Submit"
		Then I should be on the last inserted project page
		And I should see "test123"

	Scenario: edit a project successfully
		Given I am logged in

	Scenario: delete a project successfully
		Given I am logged in

	Scenario: view a project successfully
		Given I am logged in

	Scenario: view all projects succesfully


