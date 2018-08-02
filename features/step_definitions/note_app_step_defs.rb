Given("I click to add a note") do
  homepage.click_add_note
  expect(homepage.notepage.displayed?).to eq true
end

When("Fill it in and save") do
  homepage.input_title(@title)
  homepage.input_text("test#{rand(100)}")
  homepage.save_and_back
end

Then("the note is saved") do
  expect(homepage.check_new_note).to eq @title
end

When("Fill it in blank and save") do
  homepage.input_title("")
  homepage.save_and_back
end

Then("the note is saved with no title") do
  expect(homepage.check_new_note).to eq "No Title"
end

Given("I add a note") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I return to notes") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the three notes are present") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the note") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I change the title") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click save") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the new title is displayed") do
  expect(homepage.check_new_note).to eq "New Title"
end

When("I click delete") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the note is not present") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the note will not save") do
  pending # Write code here that turns the phrase above into concrete actions
end
