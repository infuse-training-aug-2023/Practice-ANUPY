require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://the-internet.herokuapp.com/tables'

table = driver.find_element(:id,'table1')
t_rows = table.find_elements(:tag_name,'tr')
# puts t_row[1].text

cell = t_rows[1].find_elements(:tag_name,'td')[0].text
puts cell

driver.quit