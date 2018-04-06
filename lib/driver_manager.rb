
class DriverManager
  include Singleton

  def initialize
    @driver = Selenium::WebDriver.for(:chrome)
  end

  def get(url)
    @driver.get(url)
  end

  def find_element(how, what)
    @driver.find_element(how, what)
  end
end