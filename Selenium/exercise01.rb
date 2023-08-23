require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome


driver.manage.window.maximize



driver.quit