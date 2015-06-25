class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :loans
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # validates_presence_of :first_name
  # validates_presence_of :last_name
  # validates_presence_of :mobile
  # validates_presence_of :date_of_birth

  def amount_borrowed
  	@total = self.loans.map do |loan|
  		loan.total
  	end
  	@total = @total.inject { |sum, n| sum + n }
 	end

  def credit_limit_used
  	self.amount_borrowed - self.credit_limit
  end

  def amount_left_to_borrow
  	self.credit_limit - self.amount_borrowed
  end

end
