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
#	assert "#{uri.path}" == send(arg1.downcase.tr(" ","_")+"_path")
  object = instance_variable_get("@#{arg1}")
	page.current_path.should == send("#{arg1.downcase.gsub(' ','_')}_path", object)
  page.status_code.should == 200
end

