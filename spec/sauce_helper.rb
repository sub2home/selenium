require 'rubygems'
require 'rspec'
require 'capybara'
require 'capybara/rspec'

if ENV['SAUCE_ACCESS_KEY']
  require 'sauce'
  require 'sauce/capybara'

  Capybara.default_driver = :sauce

  Sauce.config do |config|
    config[:browsers] = [
      ["Windows 8", "Internet Explorer", "10"],
      ["Windows 7", "Firefox", "20"],
      ["OS X 10.8", "Safari", "6"],
      ["Linux", "Chrome", nil]
    ]
  end
else
  Capybara.current_driver = :selenium
end

RSpec.configure do |config|
  config.include Capybara::DSL
end
