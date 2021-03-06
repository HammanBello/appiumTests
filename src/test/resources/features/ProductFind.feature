#@REQ_OF-488 Nocibe
Feature: Found Products

	Background:
		Given User is on homepage

	@TEST_OF-649
	Scenario Outline: Find a product with search bar
		Given User is on search bar
		When User enter a "<product>" in search bar
		And User press on search button
		Then User should see some results under the searchbar with the word "<product>"

		Examples:
		  |product     |
		  |fe    	   |


	@TEST_OF-648
	Scenario Outline: Suggestions when entering a product
		Given User is on search bar
		When User enter a "<text>" in search bar
		Then User should see suggestions appear

		Examples:
		  |text     |
		  |men    |


	@TEST_OF-659
	Scenario Outline: Not find product
		Given User is on search bar
		When User enter a "<product>" in search bar
		And User press on search button
		Then User should see message about no result found

		Examples:
		  |product     |
		  |Bbobda      |
#
#
#	@TEST_OF-652
#	Scenario Outline: Find a product with homepage category
#		Given User is on selected "<category>"
#		When User selected "<subcategory>"
#		Then User should see "<result_Page>" title display
#
#		Examples:
#			|category   |subcategory  |result_Page  |
#			|Parfum     |Parfum Homme |PARFUM HOMME |


#	@TEST_OF-653
#	Scenario Outline: Subcategory occurence from product category
#		Given User is on category menu
#		When User is on selected "<category>"
#		And User look at "<subcategory_1>" "<subcategory_2>" "<subcategory_3>"
#	    Then User should see these category
#
#		Examples:
#			|category   |subcategory_1 |subcategory_2 |subcategory_3 |
#			|Parfum     |Parfum Homme  |Parfum Femme  |Parfum Enfant |
