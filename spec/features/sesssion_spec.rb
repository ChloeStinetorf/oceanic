require 'spec_helper'

describe 'Session' do

  describe 'GET /' do
    it 'displays a login link' do
      visit root_path
      page.should have_link('Login')
    end
  end

  describe 'GET /login' do
    it 'it displays a login form on click', :js => true do
      visit root_path
      click_link('Login')
      page.should have_button('Login')
    end
  end

  describe 'POST /login' do
    let(:user) {FactoryGirl.create(:user)}

    it 'logs the user into the system if the credentials are correct', :js => true do
      login_to_system(user)
      page.should_not have_button('Login')
      expect(page.has_link?(user.username)).to be true
      page.should_not have_link('Sign Up')
      visit root_path
      expect(page.has_link?(user.username)).to be true
      page.should_not have_link('Login')
    end

  it 'does not log the user into the system if credentials are incorrect', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => user.email)
      fill_in('Password', :with => 'b')
      click_button('Login')
      page.should have_button('Login')
    end
  end
end