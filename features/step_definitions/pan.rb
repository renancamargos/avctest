Given(/^I visit the website as a costumer$/) do
  visit Buy
end

When(/^I choose a product clicking in a product thumbnail$/) do
 on(Buy).finding_product
end

Then(/^I should see the product detail page with add to cart button\.$/) do
on(Buy).check_add_to_cart_btn
end

When(/^I click in the add to cart button$/) do
on(Buy).adding_cart
end

Then(/^I should see the add to cart overlay$/) do
  on(Buy).check_cart_overlay
end

Then(/^I should see the checkout button$/) do
  on(Buy).check_checkout_btn
end

When(/^I click in the checkout button$/) do
 on(Buy).proceeding_checkout
end

Then(/^shooping cart is shown$/) do
  on(Buy).check_shopping_cart
end

Then(/^the product is on the shopping cart page$/) do
  on(Buy).check_product_added
end