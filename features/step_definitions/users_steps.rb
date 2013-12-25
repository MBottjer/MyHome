Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I sign up$/) do
  click_link "Sign Up"
  fill_in "Email", with: "michaelbottjer@hotmail.com"
  fill_in "Password", with: "123456789"
  fill_in "Password confirmation", with: "123456789"
  click_button "Sign up"
end

Given(/^I have signed up$/) do
  FactoryGirl.create(:user)
end

When(/^I sign in$/) do
  visit '/'
  click_link "Sign In"
  fill_in "Email", with: "michaelbottjer@hotmail.com"
  fill_in "Password", with: "123456789"
  click_button "Sign in"
end

Given(/^I have signed in$/) do
  FactoryGirl.create(:user)
  visit '/'
  click_link "Sign In"
  fill_in "Email", with: "michaelbottjer@hotmail.com"
  fill_in "Password", with: "123456789"
  click_button "Sign in"
end

When(/^I sign out$/) do
  click_link "Sign Out"
end