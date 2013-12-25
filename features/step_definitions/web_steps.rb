Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content arg1
end