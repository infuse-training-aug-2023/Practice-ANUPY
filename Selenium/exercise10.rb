require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://computer-database.gatling.io/computers'

table = driver.find_element(:class,'computers')
t_rows = table.find_elements(:tag_name,'tr')

puts t_rows[0].find_element(:tag_name,'th').text

index =1
while index < t_rows.length
puts t_rows[index].find_element(:tag_name,'td').text
    index = index +1
end

driver.quit