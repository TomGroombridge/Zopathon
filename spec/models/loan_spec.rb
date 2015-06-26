require 'rails_helper'

RSpec.describe Loan, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

feature "loan information and actions" do
  context "loan details can be seen from dashboard of current user" do

    before do
      visit('/')
      click_link('Sign in')
      fill_in('Email', with: 'test@example.com')
      fill_in('Password', with: 'testtest')
      click_button('Log in')
    end

    it "should see 'Log out' link" do
      visit('/')
      click_on('Dashboard')
    end

  end
end