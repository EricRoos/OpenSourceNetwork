Given(/^I am logged in$/) do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Sign in"
end
Given(/^I am on the "(.*?)" page$/) do |path|
	visit send("#{path.downcase.tr(" ","_")}_path")
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
	fill_in arg1.tr(" ","_"), :with => arg2
end

When(/^I press "(.*?)"$/) do |arg1|
	click_button arg1
end

Then(/^I should see "(.*?)"$/) do |identifier|
	page.should have_content identifier
end

Then(/^I should be on the "(.*?)" page with params "(.*?)"$/) do |arg1,arg2|
  object = instance_variable_get("@#{arg1}")
	page.current_path.should == send("#{arg1.downcase.gsub(' ','_')}_path", object)
  page.status_code.should == 200
end
And /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
  field_labeled(field).value.should =~ /#{value}/
end
