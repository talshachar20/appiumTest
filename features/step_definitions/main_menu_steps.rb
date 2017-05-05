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

When(/^convert 5 inch to meters$/) do
  find_elements( id: "select_unit_spinner" )[0].click
  text("Inch").click
  find_elements( id: "select_unit_spinner" )[1].click
  text("Micron").click
  text("5").click #not clicking
end

Then(/^I'm getting x meters$/) do
  if find_element(id: "com.ba.universalconverter:id/source_value_placeholder").text != "5"
    fail("wasnt entered")
  end
end
