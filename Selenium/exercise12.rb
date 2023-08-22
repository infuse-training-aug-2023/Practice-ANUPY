require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get 'https://gh-users-search.netlify.app/'

driver.manage.window.maximize

driver.find_element(:xpath,'//*[@id="root"]/main/section[3]/div/article[1]/header/a').click()
driver.navigate.back

search = driver.find_element(:xpath,'//*[@id="root"]/main/section[1]/div/form/div/input')
driver.manage.timeouts.implicit_wait = 5
search.send_keys("anup-y")
driver.manage.timeouts.implicit_wait = 5
search.send_keys(:enter)
driver.manage.timeouts.implicit_wait = 5
driver.find_element(:xpath,'//*[@id="root"]/main/section[3]/div/article[1]/header/a').click()
driver.navigate.refresh

driver.quit