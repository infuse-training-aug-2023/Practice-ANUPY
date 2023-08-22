require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://cosmocode.io/automation-practice-webtable/'

table = driver.find_element(:id,'countries')
table_row = table.find_elements(:tag_name,'tr')
puts table_row[0].text

driver.quit