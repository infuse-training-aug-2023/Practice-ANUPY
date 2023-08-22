require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://testpages.herokuapp.com/styled/basic-html-form-test.html'

element = driver.find_element(:name,'dropdown')
options = element.find_elements(:tag_name, 'option')
i_value =1
puts options[i_value].text

driver.quit