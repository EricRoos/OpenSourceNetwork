Then(/^I should be on the last inserted project page$/) do
	puts Project.last.id
	puts Project.last.name
	page.current_path.should == project_path(Project.last.id)
  page.status_code.should == 200
end
