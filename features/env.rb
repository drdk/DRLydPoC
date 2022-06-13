require "em/pure_ruby"
require "yaml"
require "rspec"
require "selenium-cucumber"
require "browserstack/local"
require "appium_lib"

TASK_ID = (ENV["TASK_ID"] || 0).to_i
CONFIG_NAME = ENV["CONFIG_NAME"] || "first"

CONFIG = YAML.load(File.read(File.join(File.dirname(__FILE__), "../#{CONFIG_NAME}.config.yml")))

caps = CONFIG["common_caps"].merge(CONFIG["browser_caps"][TASK_ID])

$bs_local = nil

if ENV["BROWSERSTACK_APP_ID"]
  caps["app"] = ENV["BROWSERSTACK_APP_ID"]
end

caps["bstack:options"] = {
  "userName" => ENV["BROWSERSTACK_USERNAME"],
  "accessKey" => ENV["BROWSERSTACK_ACCESS_KEY"],
}

puts caps

opts = {
  caps: caps,
  appium_lib: {
    server_url: "http://hub-cloud.browserstack.com/wd/hub",
  },
}
begin
  $appium_driver = Appium::Driver.new(opts, true)
  $driver = $appium_driver.start_driver
rescue Exception => e
  puts e.message
  Process.exit(0)
end

$wait = Selenium::WebDriver::Wait.new(:timeout => 30)
