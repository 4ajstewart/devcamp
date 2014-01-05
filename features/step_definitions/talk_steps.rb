### UTILITY METHODS ###

def valid_talk
  @talk ||= { :name => "Better apps with Rails", :description => "Howto create an app with ROR"}
end

def create_talk
  visit 'talks/new'
  fill_in "Name", :with => @talk[:name]
  fill_in "Description", :with => @talk[:description]
  click_button "Create"
end

### GIVEN ###

### WHEN ###
When(/^I create a talk$/) do
  valid_talk
  create_talk
end

### THEN ###
Then(/^I should see a talk created$/) do
  page.should have_content "Talk was successfully created."
end
