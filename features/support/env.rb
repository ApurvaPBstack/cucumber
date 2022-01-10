require 'rubygems'
require 'selenium-webdriver'
require 'browserstack/local'
require 'yaml'
# #require 'test/unit'
# Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver'
# $driver = Selenium::WebDriver.for :chrome
# $driver.get "http://Flipkart.com"
BeforeAll do
    CONFIG = YAML.load(File.read("config.yml"))
    caps = Selenium::WebDriver::Remote::Capabilities.new
    caps['os'] = 'Windows'
    caps['os_version'] = '11'
    caps['browser'] = 'Chrome'
    caps['javascriptEnabled'] = 'true'
    caps['browser_version'] = 'latest'
    caps['name'] = 'BStack-[Ruby] Sample Test' # test name
    caps['build'] = 'BStack Build Number 1' # CI/CD job or build name
    $driver = Selenium::WebDriver.for(:remote,
    :url => "http://#{CONFIG["username"]}:#{CONFIG["access_key"]}@hub.browserstack.com/wd/hub",
    :desired_capabilities => caps)
    #$driver.get "http://Flipkart.com"
    # $driver.manage.window.maximize
    # $driver.manage.timeouts.implicit_wait = 3
end

AfterAll do
    $diver.quit
end