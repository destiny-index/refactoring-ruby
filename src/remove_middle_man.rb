# class Person 
#   #...
#   def initialize(department)
#     @department = department
#   end
# 
#   def manager
#     @department.manager
#   end
# end
# 
# class Department
#   attr_reader :manager
#   
#   def initialize(manager)
#     @manager = manager
#   end
# 
#   # ...
# end
#
# manager = john.manager

class Person 
  #...
  attr_reader :department

  def initialize(department)
    @department = department
  end
end

class Department
  attr_reader :manager
  
  def initialize(manager)
    @manager = manager
  end

  # ...
end

manager = john.department.manager
