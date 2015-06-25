
u1 = User.new(email: 'my@email.com', password: '123',first_name: "fdlsfkh", last_name: "vldskh", mobile: "fdslkhfsd", date_of_birth: "2015-06-25 00:00:00", apr: 10.8, credit_limit: 20000).save(validate: false)


Loan.create!([
  {total: "1000.0", total_repayable: "2000.0", monthly_repayments: "1212.0", monthly_due_date: nil, user_id: 1, apr: "12.0", offer_apr: "12.0"},
  {total: "10000.0", total_repayable: "9051.0", monthly_repayments: "150.85", monthly_due_date: "2015-06-25 20:19:43", user_id: 1, apr: "7.9", offer_apr: nil},
  {total: "10000.0", total_repayable: "9051.0", monthly_repayments: "150.85", monthly_due_date: "2015-06-25 20:19:43", user_id: 1, apr: "7.9", offer_apr: nil}
])
Payment.create!([
  {loan_id: 2, amount: "1.0", date: nil, status: nil},
  {loan_id: 2, amount: "3.0", date: nil, status: nil}
])
