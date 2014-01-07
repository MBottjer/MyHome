When(/^I customise my links$/) do
  click_link("addlink")
  fill_in "Name", with: "Twitter"
  fill_in "Uri", with: "https://twitter.com/"
  click_button "Create Link"
end

Then(/^I should see the links on the homepage$/) do
  visit '/'
  expect(page).to have_content "Twitter"
end