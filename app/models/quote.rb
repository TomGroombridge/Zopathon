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
		9051
	end

	def monthly_repayments
		150.85
	end

	def due_date
		DateTime.now
	end





end
