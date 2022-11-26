require 'rails_helper'

RSpec.feature 'Groups', type: :feature do
  background do
    visit new_user_registration_path
    fill_in 'Name', with: 'Kidist'
    fill_in 'Email', with: 'kidist@gmail.com'
    fill_in 'Password', with: '1234567'
    fill_in 'Confirm Password', with: '1234567'
    click_button 'Sign Up'

    visit groups_path
  end

  scenario 'show groups_path' do
    expect(page).to have_content('Total Expenses')
  end

  scenario 'show user name' do
    expect(page).to have_content('Kidist')
  end

  scenario 'add a group' do
    click_link 'Add'
    expect(page).to have_content('Add Group')
  end

  scenario 'add a group show Category' do
    click_link 'Add'
    expect(page).to have_content('Category')
  end
end
