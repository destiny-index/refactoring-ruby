# class Order
#   #...
#   attr_accessor :customer
# end
#
# class Customer
#   def initialize
#   end
# end

require 'set'

class Order
  #...
  attr_reader :customer

  def customer=(val)
    customer.friend_orders.subtract(self) unless customer.nil?
    @customer = val
    customer.friend_orders.add(self) unless customer.nil?
  end
end

class Customer
  def initialize
    @orders = Set.new
  end

  def friend_orders
    # should only be used by Order when modifying the association
    @orders
  end

  def add_order(order)
    order.customer = self
  end
end
