Before do
  $driver.start_driver
  homepage.click_skip
end
Before "@addnote" do
  @title = "title#{rand(100)}"
end
at_exit do
  $driver.driver_quit
end
