require 'spec_helper'

describe 'creating a user' do
	it 'should be able to create a user' do
	    visit '/users/sign_up'
	    expect(page).to have_content("Sign up")
	end
end