require 'spec_helper'

describe 'adding a voucher' do
	it 'should be able to add a voucher code to a order of $10'do
	    visit '/users/new'
	    expect(page).to have_content("hello world")
	end
end