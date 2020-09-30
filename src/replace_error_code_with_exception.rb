# class Account
#   def withdraw(amount)
#     return -1 if amount > @balance
#     @balance -= amount
#     return 0
#   end
# end
#
# if account.withdraw(amount) == -1
#   handle_overdrawn
# else
#   do_the_usual_thing
# end

class Account
  def withdraw(amount)
    raise BalanceError if amount > @balance
    @balance -= amount
  end
end

class BalanceError < StandardError; end

begin
  account.withdraw(amount)
  do_the_usual_thing
rescue BalanceError
  handle_overdrawn
end
