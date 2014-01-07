Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content arg1
end

Given(/^I have signed up and am signed in$/) do
  FactoryGirl.create(:user)
  visit '/'
  click_link "Sign In"
  fill_in "Email", with: "michaelbottjer@hotmail.com"
  fill_in "Password", with: "123456789"
  click_button "Sign in"
  end