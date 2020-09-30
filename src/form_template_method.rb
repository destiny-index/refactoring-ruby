# class Customer
#   def statement
#     result = "Rental Record for #{name}\n"
#     @rentals.each do |rental|
#       result << "\t#{rental.movie.title}\t#{rental.charge}\n"
#     end
#     result << "Amount owed is #{total_charge}\n"
#     result << "You earned #{total_frequent_renter_points} frequent renter points"
#   end
#
#   def html_statement
#     result = "<h1>Rentals for <em>#{name}</em></h1><p>\n"
#     @rentals.each do |rental|
#       result << "#{rental.movie.title}: \t#{rental.charge}<br />\n"
#     end
#     result << "<p>You owe <em>#{total_charge}</em></p>\n"
#     result << "On this rental you earned <em>#{total_frequent_renter_points}</em> frequent renter points</p>"
#   end
# end

class Customer
  def statement
    TextStatement.value(self)
  end

  def html_statement
    HtmlStatement.value(self)
  end
end

class Statement
  def value(customer)
    result = header_string(customer)
    customer.rentals.each do |rental|
      result << each_rental_string(rental)
    end
    result << footer_string(customer)
  end
end

class TextStatement < Statement
  def header_string(customer)
    "Rental Record for #{customer.name}\n"
  end

  def each_rental_string(rental)
    "\t#{rental.movie.title}\t#{rental.charge}\n"
  end

  def footer_string(customer)
    <<~HEREDOC
      Amount owed is #{customer.total_charge}\n
      You earned #{customer.total_frequent_renter_points} frequent renter points
    HEREDOC
  end
end

class HtmlStatement < Statement
  def header_string(customer)
    "<h1>Rentals for <em>#{customer.name}</em></h1><p>\n"
  end

  def each_rental_string(rental)
    "#{rental.movie.title}: \t#{rental.charge}<br />\n"
  end

  def footer_string(customer)
    <<~HEREDOC
      <p>You owe <em>#{customer.total_charge}</em></p>\n
      On this rental you earned <em>#{customer.total_frequent_renter_points}</em> frequent renter points</p>
    HEREDOC
  end
end
