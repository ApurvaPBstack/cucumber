Feature: Google can search

@Apurva
Scenario: Finding iphone8
   Given I am on Flipkart home page
   When I search for <product>
   And I submit 
   Then I verify <product>
   
Examples:
    | product      |  
    | Iphone8      | 
    