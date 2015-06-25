class Loan < ActiveRecord::Base
	belongs_to :user
	belongs_to :quote
	has_many :payments
end
