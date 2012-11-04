Given /^that I'am on the si2 (home page)$/ do |page_name|
  visit path_to(page_name)
end

When /^I insert "(.*?)" as user$/ do |username|
  within(".login_form") do
    fill_in 'User', :with => username
  end
end


When /^I insert "(.*?)" as password$/ do |password|
  within(".login_form") do
    fill_in 'Password', :with => password
  end
  click_button "Login"  
end
Then /^I should be redirected to (the home page)$/ do |page|
  current_path.should == path_to(page)
end

Then /^a "(.*?)" is shown on the top of page$/ do |arg1|
  find("#notice").value =~ /$welcome (.*)/i
end