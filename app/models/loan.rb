class Loan < ActiveRecord::Base
	belongs_to :user
	belongs_to :quote
	has_many :payments


	def amount_left
		@amount = self.payments.map do |p|
			p.amount
		end
		@amount = @amount.inject { |sum, n| sum + n }
		self.total_repayable - @amount
	end

	def amount_paid
		@amount = self.payments.map do |p|
			p.amount
		end
		@amount = @amount.inject { |sum, n| sum + n }
	end
end
