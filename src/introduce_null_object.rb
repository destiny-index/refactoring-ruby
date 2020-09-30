# class Site
#   attr_reader :customer
#
# end
#
# class Customer
#   attr_reader :name, :plan, :history
#
# end
#
# class PaymentHistory
#   def weeks_delinquent_in_last_year
#   end
# end
#
# customer = site.customr
# plan = customer ? customer.plan : BillingPlan.basic
#
# customer_name = customer ? customer.name : 'occupant'
#
# weeks_delinquent = customer.nil? ? 0 : customer.history.weeks_delinquent_in_last_year

class Site
  attr_reader :customer

  def customer
    @customer || Customer.new_null
  end
end

module Null; end

class NullCustomer
  include Null

  def name
    'occupant'
  end

  def plan
    BillingPlan.basic
  end

  def history
    PaymentHistory.new_null
  end
end

class Customer
  attr_reader :name, :plan, :history

  def self.new_null
    NullCustomer.new
  end
end

class NullPaymentHistory
  include Null

  def weeks_delinquent_in_last_year
    0
  end
end

class PaymentHistory
  def weeks_delinquent_in_last_year
  end
end

customer = site.customr
plan = customer.plan

customer_name = customer.name

weeks_delinquent = customer.history.weeks_delinquent_in_last_year
