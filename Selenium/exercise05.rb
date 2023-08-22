require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://www.google.com/'

search=driver.find_element(:id,'APjFqb')
search.send_keys("Hello")
search.send_keys(:enter)

driver.manage.timeouts.implicit_wait = 10

driver.quit