ID_PREFIX = "dk.dr.radio.qa:id/"

class AndroidApp
  def intro_next_button
    $driver.find_element(:id, ID_PREFIX + "btn_1")
  end

  def intro_get_started_button
    $driver.find_element(:id, ID_PREFIX + "btn_1")
  end

  def accept_cookies_button
    $driver.find_element(:id, ID_PREFIX + "dialog_btn_positive")
  end

  def navigation_live_tab
    $driver.find_element(:id, ID_PREFIX + "navigation_item_live")
  end

  def live_channel_card
    $driver.find_element(:id, ID_PREFIX + "image")
  end

  def mini_player
    $driver.find_element(:id, ID_PREFIX + "activity_main_player_mini")
  end

  def mini_player_play_button
    $driver.find_element(:id, ID_PREFIX + "player_mini_play_button")
  end
end
