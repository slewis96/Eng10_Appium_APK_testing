Given("I click to add a note") do
  homepage.click_add
  expect(homepage.notepage.displayed?).to eq true
end

When("Fill it in and save") do
  homepage.input_title("title#{rand(100)}")
  homepage.input_text("test#{rand(100)}")
end


Then("the note is save") do
  pending # Write code here that turns the phrase above into concrete actions
end
