class LoansController < ApplicationController


	def create
		@user = current_user
		@loan = Loan.new(loan_params)
		@loan.update_attributes(:user_id => @user.id)
		if @loan.save
			render :show
	  else
		  format.html { render action: 'new' }
		end
	end

	def show
		@loan = Loan.find(params[:id])
		@payment = Payment.new
	end

	def edit
		@loan = Loan.find(params[:id])
	end

	private

	def loan_params
		params.require(:loan).permit(:total, :total_repayable, :monthly_repayments, :monthly_due_date, :apr, :offer_apr, :user_id)
	end



end
