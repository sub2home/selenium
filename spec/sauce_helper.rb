require 'rubygems'
require 'sauce'
require 'sauce/capybara'
require 'rspec'
require 'capybara'
require 'capybara/rspec'

Capybara.default_driver = :sauce

RSpec.configure do |config|
	config.include Capybara::DSL
end

Sauce.config do |c|
	c[:browsers] = [
		["Windows 8", "Internet Explorer", "10"],
		["Windows 7", "Firefox", "20"],
		# ["OS X 10.8", "Safari", "6"],
		["Linux", "Chrome", nil]
	]
end
