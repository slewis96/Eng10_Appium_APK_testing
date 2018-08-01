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
