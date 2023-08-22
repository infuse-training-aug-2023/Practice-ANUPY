require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://letcode.in/forms'

# main = driver.find_elements(:class, 'control')
dropdown = driver.find_element(:xpath, '/html/body/app-root/app-forms/section[1]/div/div/div[1]/div/div/form/div[2]/div[2]/div/div/div/select')
# values = main.find_element(:tag_name, 'select')
values = dropdown.find_elements(:tag_name, 'option')

values.each do |option|
    puts option.text
end

driver.quit