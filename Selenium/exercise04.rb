require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://demo.automationtesting.in/Register.html'

# button=driver.find_element(:class,'col-md-4s')
radio=driver.find_element(:name => "radiooptions", :value => "Male").click()
# button.click()
check_box=driver.find_element(:id, 'checkbox1').click()
driver.quit