class Loan < ActiveRecord::Base
	belongs_to :user
	belongs_to :quote
	has_many :payments


	def amount_left
		if self.payments.empty? == true
			self.total_repayable
		else
			@amount = self.payments.map do |p|
				p.amount
			end
			@amount = @amount.inject { |sum, n| sum + n }
			self.total_repayable - @amount
		end
	end

	def amount_paid
		if self.payments.empty? == true
			0
		else
			@amount = self.payments.map do |p|
				p.amount
			end
			@amount = @amount.inject { |sum, n| sum + n }
		end
	end
end
