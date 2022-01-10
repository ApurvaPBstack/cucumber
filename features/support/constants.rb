require 'rubygems'
require 'selenium-webdriver'
require 'browserstack/local'
BeforeAll do
    $driver.get "http://Flipkart.com"
    $driver.manage.window.maximize
    $driver.manage.timeouts.implicit_wait = 3
end