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
      ["Windows 8.1", "Internet Explorer", "11"],
      ["Windows 8", "Internet Explorer", "10"],
      ["Windows 8", "Chrome", nil],
      ["Windows 8", "Firefox", nil],
      ["Windows 7", "Internet Explorer", "9"],
      ["Windows 7", "Internet Explorer", "10"],
      ["Windows 7", "Internet Explorer", "11"],
      ["Windows 7", "Chrome", nil],
      ["Windows 7", "Firefox", nil],
      ["Windows XP", "Chrome", nil],
      ["Windows XP", "Firefox", nil],
      ["OS X 10.8", "Safari", "6"],
      ["OS X 10.9", "Safari", "7"],
      ["OS X 10.9", "Firefox", nil],
      # ["Linux", "Chrome", nil],
      # ["Linux", "Firefox", nil],
    ]
  end
else
  Capybara.default_driver = :selenium
end

RSpec.configure do |config|
  config.include Capybara::DSL
end
