# class Person
#   attr_accessor :department
# end
#
# class Department
#   attr_reader :manager
#
#   def initialize(manager)
#     @manager = manager
#   end
#
#   #...
# end
#
# manager = john.department.manager

class Person
  extend Forwardable
  def_delegator :@department, :manager
end

class Department
  attr_reader :manager

  def initialize(manager)
    @manager = manager
  end

  #...
end

manager = john.manager
