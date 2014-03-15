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
      ["Windows 7", "Internet Explorer", "9"],
      ["Windows 7", "Firefox", "20"],
      ["Windows XP", "Chrome", "32"],
      ["Windows XP", "Firefox", "24"],
      ["OS X 10.8", "Safari", "6"],
      ["Linux", "Chrome", "32"],
    ]
  end
else
  Capybara.default_driver = :selenium
end

RSpec.configure do |config|
  config.include Capybara::DSL
end
