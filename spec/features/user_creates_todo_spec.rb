require 'rails_helper'

feature 'UserCreatesTodo', type: :feature do
  scenario 'successfully' do
    sign_in
    create_todo('Buy milk')

    expect(page).to display_todo('Buy milk')
  end
end
