Before do
  $driver.start_driver
end

After do
  sleep(5)
  $driver.driver_quit
end
