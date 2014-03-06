require 'rubygems'
require 'test/unit'
require 'selenium-webdriver'

class ExampleTest < Test::Unit::TestCase
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

    def test_sauce
        @driver.navigate.to 'http://saucelabs.com/test/guinea-pig'
        assert @driver.title.include? 'I am a page title - Sauce Labs'
    end

    def teardown
        @driver.quit
    end
end
