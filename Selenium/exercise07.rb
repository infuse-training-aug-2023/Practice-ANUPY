require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 5)

driver.get 'https://testpages.herokuapp.com/styled/basic-html-form-test.html'

element = driver.find_element(:name,'dropdown')
options = element.find_elements(:tag_name, 'option')[2]
options.click
puts options.text

driver.quit