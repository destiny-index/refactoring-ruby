# ENGINEER = 0
# SALESPERSON = 1
# MANAGER = 2
#
# def self.create(type)
#   case type
#   when ENGINEER
#     Engineer.new
#   when SALESPERSON
#     Salesperson.new
#   when MANAGER
#     Manager.new
#   else
#     raise ArgumentError, "Incorrect type code value"
#   end
# end
#
# kent = Employee.create(Employee::ENGINEER)

def self.create_engineer
  Engineer.new
end

def self.create_salesperson
  Salesperson.new
end

def self.create_manager
  Manager.new
end

kent = Employee.create_engineer
