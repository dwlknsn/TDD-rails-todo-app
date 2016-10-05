require 'rails_helper'

feature 'UserCompletesTodo', type: :feature do
  scenario 'successfully' do
    sign_in

    click_on('Add a New Todo')
    fill_in('Title', with: 'Buy some milk')
    click_on('Submit')
    click_on('Mark as complete')

    expect(page).to have_css('.todos li.completed', text: 'Buy some milk')
  end
end
