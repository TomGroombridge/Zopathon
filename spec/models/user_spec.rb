require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

feature "User can sign in and out" do
  context "user not signed in and on the homepage" do
    it "should see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    it "should not see 'sign out' link" do
      visit('/')
      expect(page).not_to have_link('Sign out')
    end
  end

  context "user signed in on the homepage" do
    before do
      visit('/')
      click_link('Sign up')
      fill_in('Email', with: 'test@example.com')
      fill_in('Password', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      click_button('Sign up')
    end

    it "should see 'Log out' link" do
      expect(page).to have_link('Log out')
    end

    it "should not see a 'sign in' link and a 'sign up' link" do
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end

    it "should see a 'Dashboard' link" do
      expect(page).to have_link('Dashboard')
    end
  end
end
