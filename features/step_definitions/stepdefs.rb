require 'rubygems'
#require 'selenium-webdriver'
#require 'test/unit'


Given(/^I am on Flipkart home page$/) do
  # Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver'
  # @driver = Selenium::WebDriver.for :chrome
  #$driver.get "http://Flipkart.com"
  sleep(5)
  element = $driver.find_element(css: "._2KpZ6l._2doB4z")
  element.click
  #@assert =Test::Unit::TestCase.new()
end

When(/^I search for ([^"]*)$/) do |search_term|
  # binding.pry
  
  element = $driver.find_element(name: "q")
  element.send_keys(search_term)
  element.click
end

# And(/^the page title should start with ([^"]*)$/) do |value|
#   wait = Selenium::WebDriver::Wait.new(timeout: 10)
#   wait.until { @driver.title.start_with? value}
#   puts "Page title is #{@driver.title}"
#   element = @driver.find_element(css: ".LC20lb.MBeuO.DKV0Md")
#   element.click
# end

And(/^I submit$/) do
  # sleep(2)
  # @driver.find_element(css: "._2KpZ6l._2doB4z").click
  # sleep(2)
  # element = @driver.find_element(name: "q")
  # element.send_keys item
  $driver.find_element(css: ".L0Z3Pu").click
  sleep(2)
end


Then (/^I verify ([^"]*)$/) do |given_title|
  # wait = Selenium::WebDriver::Wait.new(timeout: 10)
  # wait.until { @driver.title.start_with? given_title }
  # puts given_title
  # puts "Page title is #{@driver.title}"
  # verify_title = @driver.title
  #@assert.assert_equal("Iphone8- Buy Products Online at Best Price in India - All Categories | Flipkart.com" , verify_title)
  sleep(5)
  elements = $driver.find_elements(css: "._4rR01T")
  # puts elements
  # if given_title.include?output
  #   puts "found #{given_title}"
  # else 
  #   puts "not found"
  # end
  elements.each do |i|
    puts i.text()
  end
  # @assert.assert()
  $driver.quit
end