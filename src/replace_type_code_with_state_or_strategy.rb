# class Employee
#   ENGINEER = 0
#   SALESMAN = 1
#   MANAGER = 2
#
#   def initialize(type)
#     @type = type
#   end
#
#   def pay_amount
#     case @type
#     when ENGINEER
#       return @monthly_salary
#     when SALESMAN
#       return @monthly_salary + @commission
#     when MANAGER
#       return @monthly_salary + @bonus
#     else
#       raise "Incorrect Employee"
#     end
#   end
# end

class Employee
  ENGINEER = 0
  SALESMAN = 1
  MANAGER = 2

  attr_reader :monthly_salary
  attr_reader :commission
  attr_reader :bonus

  def initialize(type)
    self.type = type
  end

  def type=(value)
    case value
    when ENGINEER
      @employee_type = Engineer.new(
        :monthly_salary => monthly_salary)
    when SALESMAN
      @employee_type = Salesman.new(
        :monthly_salary => monthly_salary,
        :commission => commission)
    when MANAGER
      @employee_type = Manager.new(
        :monthly_salary => monthly_salary,
        :bonus => bonus)
    end
  end

  def pay_amount
    @employee_type.pay_amount
  end
end

class Engineer
  def initialize(args)
    @monthly_salary = args[:monthly_salary]
  end

  def pay_amount
    monthly_salary
  end
end

class Salesman
  def initialize(args)
    @monthly_salary = args[:monthly_salary]
    @commission = args[:commission]
  end

  def pay_amount
    monthly_salary + commission
  end
end

class Manager
  def initialize(args)
    @monthly_salary = args[:monthly_salary]
    @bonus = args[:bonus]
  end

  def pay_amount
    monthly_salary + bonus
  end
end
