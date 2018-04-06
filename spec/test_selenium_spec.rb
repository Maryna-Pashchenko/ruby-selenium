require "selenium/webdriver"
RSpec.describe TestSelenium do

  caps = Selenium::WebDriver::Remote::Capabilities.new

  caps["name"] = "Login Form Example"
  caps["build"] = "1.0"
  caps["browserName"] = "Chrome" 		# by default this pulls the latest version# To specify version, add caps["version"] = "desired version"
  caps["screen_resolution"] = "1024x768"

  puts "Starting tunnel..."
before(:all) do
  @driver = Selenium::WebDriver.for(:chrome,
                                    :desired_capabilities => caps)
end

  context "smth" do
  it "has a version number" do

    @driver.get("https://www.google.com/")
    search_field = @driver.find_element(:name, 'q')
    search_field.send_key("12334")
    search_field.submit
    # @driver.find_element(:name, 'btnK').submit
    expect(TestSelenium::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
  end
end
