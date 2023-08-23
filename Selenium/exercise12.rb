require 'selenium-webdriver'

class PageNavigation
@driver
    def initialize
        Selenium::WebDriver::Chrome::Service.driver_path="C:/Ruby32-x64/Drivers/chromedriver.exe"
        @driver = Selenium::WebDriver.for :chrome
        @driver.manage.timeouts.implicit_wait = 5
    end
    
    def launch_website
        @driver.get 'https://gh-users-search.netlify.app/'
    end

    def navigate_through_website
        @driver.manage.window.maximize

        @driver.find_element(:xpath,'//*[@id="root"]/main/section[3]/div/article[1]/header/a').click()
        @driver.navigate.back

        search = @driver.find_element(:xpath,'//*[@id="root"]/main/section[1]/div/form/div/input')

        search.send_keys("anup-y")
        # @driver.manage.timeouts.implicit_wait = 5
        search.send_keys(:enter)
        # @driver.manage.timeouts.implicit_wait = 5
        @driver.find_element(:xpath,'//*[@id="root"]/main/section[3]/div/article[1]/header/a').click()
        @driver.navigate.refresh
    end

    def quit_driver
        @driver.quit
    end
end

page_navigation = PageNavigation.new
page_navigation.launch_website
page_navigation.navigate_through_website
page_navigation.quit_driver