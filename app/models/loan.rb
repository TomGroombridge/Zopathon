class Loan < ActiveRecord::Base
	belongs_to :user
	belongs_to :quote
	has_many :payments
	has_many :top_ups


	def amount_left
		if self.payments.empty? == true
			self.overall_total
		else
			@amount = self.payments.map do |p|
				p.amount
			end
			@amount = @amount.inject { |sum, n| sum + n }
			self.overall_total - @amount
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

	def overall_total
		unless self.top_ups.empty? == true
			@amount = self.top_ups.map do |n|
				n.amount
			end
			@amount = @amount.inject { |sum, n| sum + n }
			self.total_repayable + @amount
		else
			self.total_repayable
		end
	end

end
