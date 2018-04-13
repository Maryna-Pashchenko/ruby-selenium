require 'singleton'
class DriverManager
  include Singleton

  def initialize
    @driver = Selenium::WebDriver.for(:chrome)
  end

  def self.get(url)
    @driver.get(url)
  end

  def find_element(how, what)
    @driver.find_element(how, what)
  end
end

# class Driver
#   def self.instance
#     Thread.current['driver-singleton'] ||= Selenium::WebDriver.for(:chrome)
#   end
#
#   def self.clear
#     Thread.current['driver-singleton'] = nil
#   end
# end