require 'rails_helper'

RSpec.feature "RegistrationPage", type: :feature do
  context 'On The Landing Page' do
    Steps 'Being Welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end #end of Given
      Then 'I can see a welcome message'do
        expect(page).to have_content("Welcome To The Registration Page")
      end #end of then
    end #end of Steps
    Steps 'Registering' do
      Given 'I am on the landing page' do
        visit '/'
      end #end of Given
      When 'I regester' do
        fill_in 'Full Name:', with: 'Wiz Khalifa'
        fill_in 'Street Address:', with: '1290 Avenue of the Americas'
        fill_in 'City:', with: 'New York'
        fill_in 'State:', with: 'New York'
        fill_in 'Postal Code:', with: '10104'
        fill_in 'Country:', with: 'United States'
        fill_in 'Email Address:', with: 'WizKhalifa@TaylorGang.net'
        fill_in 'User ID:', with: 'Wiz'
        fill_in 'Password:', with: 'blackandyellow'
      end
    end

  end #end of context
end
