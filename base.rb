require 'rubygems'
require 'test/unit'
require 'selenium-webdriver'

class Base < Test::Unit::TestCase
    def setup
        caps = Selenium::WebDriver::Remote::Capabilities.send(ENV['WEBDRIVER_BROWSER'])
        caps.version = ENV['WEBDRIVER_VERSION']
        caps.platform = ENV['WEBDRIVER_OS']
        caps[:name] = 'Test'

        @driver = Selenium::WebDriver.for(
          :remote,
          :url => "http://#{ENV['SAUCELABS_USER']}:#{ENV['SAUCELABS_KEY']}@ondemand.saucelabs.com:80/wd/hub",
          :desired_capabilities => caps
          )
    end

    def teardown
        @driver.quit
    end
end
