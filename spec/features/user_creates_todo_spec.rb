require 'rails_helper'

RSpec.feature 'UserCreatesTodo', type: :feature do
  scenario 'successfully' do
    sign_in

    click_on('Add a New Todo')
    fill_in('Title', with: 'My First Todo')
    click_on('Submit')

    expect(page).to have_css('.todos li', text: 'My First Todo')
  end
end
