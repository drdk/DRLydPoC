Given("I am on the DR LYD app") do
  $wait.until {
    $driver.find_element(:id, "dk.dr.radio.qa:id/btn_1").displayed?
  }
  4.times {
    $driver.find_element(:id, "dk.dr.radio.qa:id/btn_1").click
  }
  $wait.until {
    $driver.find_element(:id, "dk.dr.radio.qa:id/dialog_btn_positive").displayed?
  }
  $driver.find_element(:id, "dk.dr.radio.qa:id/dialog_btn_positive").click
end

When("I go to the Live tab") do
  $wait.until {
    $driver.find_element(:id, "dk.dr.radio.qa:id/navigation_item_live").displayed?
  }
  $driver.find_element(:id, "dk.dr.radio.qa:id/navigation_item_live").click
  $wait.until {
    $driver.find_element(:id, "dk.dr.radio.qa:id/header").displayed?
  }
end

When("I touch the {string} card") do |channel|
  $wait.until {
    $driver.find_element(:id, "dk.dr.radio.qa:id/image").displayed?
  }
  $driver.find_element(:id, "dk.dr.radio.qa:id/image").click
end

Then("radio channel {string} should begin playing") do |channel|
  $wait.until {
    $driver.find_element(:id, "dk.dr.radio.qa:id/activity_main_player_mini").displayed?
  }
  $wait.until {
    $driver.find_element(:id, "dk.dr.radio.qa:id/player_mini_play_button").displayed?
  }
  expect($driver.find_element(:id, "dk.dr.radio.qa:id/player_mini_play_button").contentDescription).to eq "Pause"
end
