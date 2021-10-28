require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'require_all'
require 'pry'
require 'rspec/expectations'

def options
  Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1800,1000])
end

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end