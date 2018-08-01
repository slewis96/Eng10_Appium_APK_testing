Before do
  $driver.start_driver
  homepage.click_skip
end

at_exit do
  $driver.driver_quit
end
