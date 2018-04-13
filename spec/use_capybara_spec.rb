# require 'rspec'
require 'capybara/rspec'
RSpec.describe 'My behaviour', type: :feature do
    # before :each do
    #   User.make(email: 'user@example.com', password: 'password')
    # end

    it "signs me in" do
      visit 'https://www.google.com/'
        fill_in(name: 'q', with: 'user@example.com')
        click_button('Google Search')
      # find('input[name="q"]').submit
      expect(page).to have_content 'Success'
    end
end