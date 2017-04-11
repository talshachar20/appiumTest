Given(/^I land on home screen$/) do
  find_element( accessibility_id: "Open navigation drawer")
  find_element( accessibility_id: "More options")
end

When(/^I press on menu button$/) do
  find_element( accessibility_id: "Open navigation drawer").click
end

Then(/^I should see left side menu$/) do
  text("Unit Converter")
end

When(/^I press on conversions$/) do
  puts "bla bla bla"
end

Then(/^I land on conversions screen$/) do
  puts "bla bla bla"
end
