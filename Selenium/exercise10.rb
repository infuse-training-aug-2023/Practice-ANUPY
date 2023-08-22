require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://computer-database.gatling.io/computers'

table = driver.find_element(:class,'computers')
header = table.find_element(:tag_name,'thead')
row = header.find_elements(:tag_name,'th')
puts row[0].text

body = table.find_element(:tag_name,'tbody')
col_row = body.find_elements(:tag_name,'tr')

for row in col_row do
    puts row.find_elements(:tag_name, 'td')[0].text
end

driver.quit