Given("I am on the DR LYD app") do
  $wait.until { $driver.find_element(:accessibility_id, "DR LYD").displayed? }
end
