#QA Test
#Created by Renan Mendes Camargos
#Create date: 10/19/2015
#For: Avenue Code - Williams-Sonoma

Feature: As a Williams-Sonoma User, I want to buy a product

Scenario: verify add to cart button.
Given I visit the website as a costumer
When I choose a product clicking in a product thumbnail
Then I should see the product detail page with add to cart button.

Scenario: verify overlay for add to cart button
Given I visit the website as a costumer
When I choose a product clicking in a product thumbnail
Then I should see the product detail page with add to cart button.
When I click in the add to cart button
Then I should see the add to cart overlay

Scenario: verify checkout button on add to cart overlay
Given I visit the website as a costumer
When I choose a product clicking in a product thumbnail
Then I should see the product detail page with add to cart button.
When I click in the add to cart button
Then I should see the add to cart overlay
And I should see the checkout button

Scenario: proceeding to checkout
Given I visit the website as a costumer
When I choose a product clicking in a product thumbnail
Then I should see the product detail page with add to cart button.
When I click in the add to cart button
Then I should see the add to cart overlay
And I should see the checkout button
When I click in the checkout button
Then shooping cart is shown
And the product is on the shopping cart page


