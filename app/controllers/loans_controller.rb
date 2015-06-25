class LoansController < ApplicationController


	def create
		@user = current_user
		@loan = Loan.new(loan_params)
		@loan.update_attributes(:user_id => @user.id)
		if @loan.save
			redirect_to user_path(@user)
	  else
		  format.html { render action: 'new' }
		end
	end

	def show
		@loan = Loan.find(params[:id])
		@payment = Payment.new
		@top_up = TopUp.new
	end

	def edit
		@loan = Loan.find(params[:id])
	end

	private

	def loan_params
		params.require(:loan).permit(:total, :total_repayable, :monthly_repayments, :monthly_due_date, :apr, :offer_apr, :user_id, :month_amount)
	end



end
