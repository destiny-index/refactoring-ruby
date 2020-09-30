# class JobItem
#   attr_reader :quantity, :employee
#
#   def initialize(unit_price, quantity, is_labor, employee)
#     @unit_price = unit_price
#     @quantity = quantity
#     @is_labor = is_labor
#     @employee = employee
#   end
#
#   def total_price
#     unit_price * @quantity
#   end
#
#   def unit_price
#     labor? ? @employee.rate : @unit_price
#   end
#
#   def labor?; @is_labor end
# end
#
# class Employee
#   attr_reader :rate
#
#   def initialize(rate)
#     @rate = rate
#   end
# end
#
# j1 = JobItem.new(0, 5, true, kent)

class JobItem
  attr_reader :quantity

  def initialize(unit_price, quantity)
    @unit_price = unit_price
    @quantity = quantity
  end

  def total_price
    unit_price * @quantity
  end

  def unit_price
    @unit_price
  end

  def labor?
    false
  end
end

class LaborItem < JobItem
  attr_reader :employee

  def initialize(quantity, employee)
    super(unit_price, quantity)
    @employee = employee
  end

  def create(quantity, employee)
    self.new(0, quantity, true, employee)
  end

  def unit_price
    employee.rate
  end

  def labor?
    true
  end
end

class Employee
  attr_reader :rate

  def initialize(rate)
    @rate = rate
  end
end

j1 = LaborItem.new(5, kent)
