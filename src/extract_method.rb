# def print_owing
#   outstanding = 0.0
#
#   # print banner
#   puts "*************************"
#   puts "***** Customer Owes *****"
#   puts "*************************"
#
#   # calculate outstanding
#   @orders.each do |order|
#     outstanding += order.amount
#   end
#
#   # print details
#   puts "name: #{@name}"
#   puts "amount: #{outstanding}"
# end

def print_owing
  print_banner
  outstanding = calculate_outstanding
  print_details(outstanding)
end

def print_banner
  puts "*************************"
  puts "***** Customer Owes *****"
  puts "*************************"
end

def calculate_outstanding
  outstanding = 0.0
  @orders.reduce(0.0) do |order|
    outstanding += order.amount
  end
  outstanding
end

def print_details(outstanding)
  puts "name: #{@name}"
  puts "amount: #{outstanding}"
end
