class UsersController < ApplicationController


	def show
		@user = User.find(params[:id])
		@loans = @user.loans
	end

end
