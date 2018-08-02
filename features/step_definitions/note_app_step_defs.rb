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

Given("I add three notes") do
  homepage.click_add_note
  homepage.input_title(@title1)
  homepage.input_text("test#{rand(100)}")
  homepage.save_and_back
  homepage.click_add_note
  homepage.input_title(@title2)
  homepage.input_text("test#{rand(100)}")
  homepage.save_and_back
  homepage.click_add_note
  homepage.input_title(@title3)
  homepage.input_text("test#{rand(100)}")
  homepage.save_and_back
end

Given("I add a note") do
  homepage.click_add_note
  homepage.input_title(@title)
  homepage.input_text("test#{rand(100)}")
  homepage.save_and_back
end

When("I return to notes") do

end

Then("the three notes are present") do
  expect(homepage.check_multiple_notes).to include(@title1)
  expect(homepage.check_multiple_notes).to include(@title2)
  expect(homepage.check_multiple_notes).to include(@title3)
end

When("I click on the note") do
  homepage.click_note
end

When("I change the title") do
  homepage.input_title "New Title"
end

When("I click save") do
  homepage.save_and_back
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
