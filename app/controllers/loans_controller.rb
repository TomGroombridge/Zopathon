class LoansController < ApplicationController


	def create
		@loan = Loan.new(loan_params)
		if @loan.save
			render :show
	  else
		  format.html { render action: 'new' }
		end
	end

	private

	def loan_params
		params.require(:loan).permit(:total, :total_repayable, :monthly_repayments, :monthly_due_date, :apr, :offer_apr)
	end



end
