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
  text("My conversions").click
end

Then(/^I land on conversions screen$/) do
  if text("My conversions").text != "My conversions"
    fail("Incorrect screen!")
  end
end

When(/^I press on length$/) do
  text("Length").click
end

When(/^convert (\d+) inch to meters$/) do |arg1|
  text("Foot").click
  text("Inch").click

  text("Centimeter").click
  text("Meter").click
  sleep(2)
  text("5").click
  sleep(4)
end

Then(/^I'm getting x meters$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
