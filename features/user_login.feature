Feature: Users should be able to log in
	In order to use the si2 portal 
	a user should log on

Scenario: User log on
	Given that I'am on the si2 home page
	When I insert "mario.minutolo@gmail.com" as user
	And I insert "foobar" as password
	Then I should be redirected to the home page
	And a "welcome message" is shown on the top of page 
	