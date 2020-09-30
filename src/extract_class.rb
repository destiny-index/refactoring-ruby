# class Person
#   # ...
#   attr_reader :name
#   
#   def telephone_number
#     '(' + @office_area_code + ') ' + @office_number
#   end
# end

class Person
  # ...
  extend Forwardable

  attr_reader :name
  def_delegators :@office_telephone, :telephone_number

  def initialize
    @office_telephone = TelephoneNumber.new
  end
end

class TelephoneNumber
  attr_accessor :area_code, :number

  def telephone_number
    '(' + area_code + ') ' + number
  end
end
