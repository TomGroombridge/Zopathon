class UsersController < ApplicationController

  def index

  end

	def show
		@user = User.find(params[:id])
		@loans = @user.loans
	end

end
