require 'rails_helper'
 
RSpec.describe 'Hello world', type: :feature do
  scenario 'index page' do
    visit root_url
    sleep(5)
    expect(page).to have_content('Hello World')
  end
end