require 'rails_helper'

RSpec.feature "RegistrationButton", type: :feature do
  context 'Registering' do
    Steps 'Register' do
      Given 'I am on the register page' do
        visit '/'
      end
      When 'I fill in the registration' do
        fill_in 'Full Name:', with: 'Wiz Khalifa'
        fill_in 'Street Address:', with: '1290 Avenue of the Americas'
        fill_in 'City:', with: 'New York'
        fill_in 'State:', with: 'New York'
        fill_in 'Postal Code:', with: '10104'
        fill_in 'Country:', with: 'United States'
        fill_in 'Email Address:', with: 'WizKhalifa@TaylorGang.net'
        fill_in 'User ID:', with: 'Wiz'
        fill_in 'Password:', with: 'blackandyellow'
        click_button 'Register'
      end
      Then 'Redirect to registration confirmation page when button is clicked' do
        expect(page).to have_content "Wiz Khalifa"
        expect(page).to have_content "1290 Avenue of the Americas"
        expect(page).to have_content "New York"
        expect(page).to have_content "New York"
        expect(page).to have_content "10104"
        expect(page).to have_content "United States"
        expect(page).to have_content "WizKhalifa@TaylorGang.net"
        expect(page).to have_content "Wiz"
        expect(page).to have_content "blackandyellow"
      end

    end #end of steps
  end #end of context
end #end of rspec
