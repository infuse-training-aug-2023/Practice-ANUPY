require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 100)
driver.get 'https://www.globalsqa.com/demo-site/sliders/#Steps'

driver.switch_to.frame driver.find_elements(:class,'demo-frame')[-1]

slider = wait.until { driver.find_element(:id, "slider") }

driver.action.drag_and_drop_by(slider, 10, 0).perform

value = driver.find_element(:id, "amount")

print value.attribute("value")
# sleep(1)
driver.quit