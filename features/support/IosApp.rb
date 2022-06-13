class IosApp
  def intro_next_button
    $driver.find_element(:name, "NÆSTE")
  end

  def intro_get_started_button
    $driver.find_element(:name, "KOM I GANG")
  end

  def connect_ok_button
    $driver.find_element(:name, "OK")
  end

  def accept_cookies_button
    $driver.find_element(:name, "OK")
  end

  def navigation_live_tab
    $driver.find_element(:name, "Live")
  end

  def live_channel_card
    $driver.find_element(:name, "Kanalvælger")
  end

  def mini_player
    $driver.find_element(:name, "Nu spiller")
  end

  def mini_player_play_button
    $driver.find_element(:name, "Pause")
  end
end
