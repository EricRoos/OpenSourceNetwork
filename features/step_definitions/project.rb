Then(/^I should be on the last inserted project page$/) do
	puts Project.last.id
	puts Project.last.name
	page.current_path.should == project_path(Project.last.id)
  page.status_code.should == 200
end
Given(/^there exists a project named "(.*?)" with id = (\d+)$/) do |arg1, arg2|
	p = Project.new
	p.name = arg1
	p.id = arg2
	assert_equal(true,p.save,"Unable to save dependent project")
end

Then(/^I should be on the project page for id (\d+)$/) do |arg1|
	page.current_path.should == "/projects/#{arg1}"
	page.status_code.should == 200
end

Given(/^I am on the edit project page for id = (\d+)$/) do |id|
	visit("/projects/#{id}/edit")
end

