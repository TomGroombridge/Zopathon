class TopUpsController < ApplicationController

	def new
		@loan = Loan.find(params[:loan_id])
		@top_up = TopUp.new
	end

	def create
		@top_up = TopUp.new(top_up_params)
		if @top_up.save
			render :show
	  else
		  format.html { render action: 'new' }
		end
	end

	private

	def top_up_params
		params.require(:top_up).permit(:amount, :loan_id)
	end

end
