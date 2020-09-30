# class Account
#   #...
#   def interest_for_amount_days(amount, days)
#     @interest_rate * amount * days / 365
#   end
# end

class Account
  extend Forwardable
  def_delegators :@account_type, :interest_rate, :interest_rate=
  #...

  def interest_for_amount_days(amount, days)
    interest_rate * amount * days / 365
  end
end

class AccountType
  attr_accessor :interest_rate
end
