class PaymentsController < ApplicationController

	def new
		@loan = Loan.find(params[:loan_id])
		@payment = Payment.new
	end

	def create
		@payment = Payment.new(payment_params)
		if @payment.save
			respond_to do |format|
	      format.js {@loan = @payment.loan}
	    end
	    flash[:notice] = 'The Payment has been sent and your monthly repayments have been adjusted accordingly'
	  else
		  format.html { render action: 'new' }
		end

	end

	def show
		@payment = Payment.find(params[:id])
		@loan = @payment.loan
	end

	private

	def payment_params
		params.require(:payment).permit(:amount, :loan_id)
	end

end
