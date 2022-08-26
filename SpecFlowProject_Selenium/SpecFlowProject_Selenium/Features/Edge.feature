Feature: LoginEdge

@mytag
Scenario: Test login functionality of application
	Given I navigate to application with following browsers
		| Browsers   |
		| <Browsers> |
	And I click Login Link
	And I enter username and password
		| UserName | Password |
		| admin    | password |
	And I click Login
	Then I should see user logged in to application

	Examples: 
	| Browsers |
	| microsoftedge |
	