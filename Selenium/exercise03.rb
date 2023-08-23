require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://www.saucedemo.com/'

button=driver.find_element(:class,'submit-button')
button.click()

driver.quit