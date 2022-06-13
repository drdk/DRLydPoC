Before do
  $app = case $driver.capabilities.platform_name

    when "Android"
      AndroidApp.new
    when "iOS"
      IosApp.new
    else
      raise "Cannot find app model from platform name"
    end
end

Given("I am on the DR LYD app") do
  $wait.until { $app.intro_next_button.displayed? }
  3.times { $app.intro_next_button.click }
  $app.intro_get_started_button.click

  if $driver.capabilities.platform_name == "iOS"
    $app.connect_ok_button.click if $app.connect_ok_button.displayed?
  end

  $wait.until { $app.accept_cookies_button.displayed? }
  $app.accept_cookies_button.click
end

When("I go to the Live tab") do
  $wait.until { $app.navigation_live_tab.displayed? }
  $app.navigation_live_tab.click
end

When("I touch the {string} card") do |channel|
  $wait.until { $app.live_channel_card.displayed? }
  $app.live_channel_card.click
end

Then("radio channel {string} should begin playing") do |channel|
  $wait.until { $app.mini_player.displayed? }
  $wait.until { $app.mini_player_play_button.displayed? }
end
