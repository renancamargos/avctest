#QA Test
#Created by Renan Mendes Camargos
#Create date: 10/19/2015
#For: Avenue Code - Williams-Sonoma

Feature: As a Williams-Sonoma User, I want to search a product

Scenario: Set values on search bar
Given I visit the website as a costumer
Then I should click on search bar
When I set the value "shun" on search bar
Then I should see the search results page

Scenario: Verify search for a product by search bar
Given I visit the website as a costumer
When I set the value "shun" on search bar
Then I should see the search results page

Scenario: Verify display for quick look button
Given I visit the website as a costumer
When I set the value "shun" on search bar
And I should hover over the product thumbnail
Then I should see the quick look button

Scenario: Verify quick look overlay
Given I visit the website as a costumer
When I set the value "shun" on search bar
And I should hover over the product thumbnail
Then I should see the quick look button
And I click in quick look button
Then I see the product on overlay
And the product should have the same name and price.

