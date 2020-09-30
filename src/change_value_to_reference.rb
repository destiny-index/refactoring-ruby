# class Customer
#   attr_reader :name
#
#   def initialize(name)
#     @name = name
#   end
# end
#
# class Order
#   def initialize(customer_name)
#     @customer = Customer.new(customer_name)
#   end
#
#   def customer=(customer_name)
#     @customer = Customer.new(customer_name)
#   end
#
#   def customer_name
#     @customer.name
#   end
#
#   private
#
#     def self.number_of_orders_for(orders, customer)
#       orders.select { |order| order.customer_name == customer.name }.size
#     end
# end

class Customer
  attr_reader :name

  Instances = {}

  def initialize(name)
    @name = name
  end

  def self.with_name(name)
    Instances[name]
  end

  def self.create(name)
    Customer.new(name)
  end

  def self.load_customers
    new("Lemon Car Hire").store
    new("Associated Coffee Machines").store
    new("Bilston Gaswords").store
  end

  def store
    Instances[name] = self
  end
end

class Order
  def initialize(customer_name)
    @customer = Customer.create(customer_name)
  end

  def customer=(customer_name)
    @customer = Customer.create(customer_name)
  end

  def customer_name
    @customer.name
  end

  private

    def self.number_of_orders_for(orders, customer)
      orders.select { |order| order.customer_name == customer.name }.size
    end
end
