class QuotesController < ApplicationController

	def new
		@user = current_user
		@quote = Quote.new
	end

	def create
		@quote = Quote.new(quote_params)
		if @quote.save
			render :show
	  else
		  format.html { render action: 'new' }
		end
	end

	def show
		@user = current_user
		@quote = Quote.find(params[:id])
		@loan = @quote.loan
	end

	private

	def quote_params
		params.require(:quote).permit(:apr, :length_of_loan, :loan_amount)
	end

end
