Given(/^I visit the website as a costumer$/) do
  visit Buy 
end

Then(/^I should click on search bar$/) do
  on(Buy).search_product
end

When(/^I set the value "([^"]*)" on search bar$/) do |keyword|
 @keyword = keyword
  @current_page.product_set @keyword
end

Then(/^I should see the search results page$/) do
  on(Buy).check_search_results
end

When(/^I should hover over the product thumbnail$/) do
  on(Buy).looking_for
end

Then(/^I should see the quick look button$/) do
  on(Buy).check_quick_look
end

Given(/^I click in quick look button$/) do
  on(Buy).quick_look_click
end

Then(/^I see the product on overlay$/) do
  on(Buy).check_quicklook_overlay
end

Then(/^the product should have the same name and price\.$/) do
  on(Buy.)check_product_price
end
