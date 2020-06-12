@BDDSTORY-BEAN-1
Feature: Serve Coffee
As a coffee lover
  I can get coffee from the machine
  So I can enjoy the rest of the day

Background:
Given the coffee machine is started
And I handle everything except the water tank

	@BDDTEST-BEAN-2
	@BDDVER--1
	@BDDCYC-fca4bc4c-4971-4673-9fdb-b541f9bf7ed6
	Scenario: Message 'Fill water tank' is displayed after 50 coffees are taken
	
		Given water tank is filled
		When 50 coffee are taken
		Then Display 'Fill water tank' message

	@BDDTEST-BEAN-3
	@BDDVER--1
	@BDDCYC-fca4bc4c-4971-4673-9fdb-b541f9bf7ed6
	Scenario: It is possible to take 10 coffees after the message 'Fill water tank' is displayed
	
		Given the 'Fill tank' message is displayed
		When coffee are taken
		Then Allows to take 10 more coffee

	@BDDTEST-BEAN-4
	@BDDVER--1
	@BDDCYC-fca4bc4c-4971-4673-9fdb-b541f9bf7ed6
	Scenario: When the water tank is filled, the message disappeared
	
		Given the water tank is filled
		Then the message should be disappeared

