desired_caps = {
  caps: caps,
  appium_lib: {
    server_url: "http://hub-cloud.browserstack.com/wd/hub",
  },
}
begin
  $appium_driver = Appium::Driver.new(desired_caps, true)
  $driver = $appium_driver.start_driver
rescue Exception => e
  puts e.message
  Process.exit(0)
end
