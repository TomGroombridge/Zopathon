class Quote < ActiveRecord::Base

	def overall_amount
		self.loan_amount
	end

	def month_amount
		self.length_of_loan * 12
	end

	def apr
		7.9
	end

	def total_amount
		self.overall_amount * 1.079
	end

	def monthly_repayments
		self.total_amount / self.month_amount
	end

	def due_date
		DateTime.now
	end





end
