# class Person
#   # ...
#   extend Forwardable
# 
#   attr_reader :name
#   def_delegators :@office_telephone, :telephone_number
# 
#   def initialize
#     @office_telephone = TelephoneNumber.new
#   end
# end
# 
# class TelephoneNumber
#   attr_accessor :area_code, :number
# 
#   def telephone_number
#     '(' + area_code + ') ' + number
#   end
# end
#
# martin = Person.new
# martin.office_telephone.area_code = "781"

class Person
  # ...
  attr_reader :name
  attr_accessor :area_code, :number

  def telephone_number
    '(' + area_code + ') ' + number
  end
end

martin = Person.new
martin.area_code = "781"
