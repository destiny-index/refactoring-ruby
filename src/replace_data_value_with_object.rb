# class Order
#   attr_accessor :customer
# 
#   def initialize(customer)
#     @customer = customer
#   end
# 
#   private
# 
#   def self.number_of_order_for(orders, customer)
#     orders.select { |order| order.customer == customer }.size
#   end
# end

class Order
  def initialize(customer_name)
    @customer = Customer.new(customer_name)
  end

  def customer_name
    @customer.name
  end

  def customer=(customer_name)
    @customer = Customer.new(customer_name)
  end

  private

    def self.number_of_order_for(orders, customer_name)
      orders.select { |order| order.customer_name == customer_name }.size
    end
end

class Customer
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
