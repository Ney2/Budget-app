require 'rails_helper'

RSpec.feature 'Logins', type: :feature do
  background { visit new_user_registration_path }

  scenario 'with valid information' do
    fill_in 'Name', with: 'Kidist'
    fill_in 'Email', with: 'kidist@gmail.com'
    fill_in 'Password', with: '1234567'
    fill_in 'Confirm Password', with: '1234567'

    click_button 'Sign Up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
