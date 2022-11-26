require 'rails_helper'

RSpec.describe 'Splash Index', type: :feature do
  describe 'GET /' do
    it 'displays the contents of the page' do
      visit root_path
      expect(page).to have_content 'Fast Budget | Expense Manager'
    end

    it 'displays the contents of the page' do
      visit root_path
      expect(page).to have_content 'Get Started'
    end

    it 'redirects to the Log in page' do
      visit root_path
      click_link 'Get Started'
      expect(page).to have_current_path(new_user_registration_path)
    end
  end
end
