# def found_miscreant(people)
#   people.each do |person|
#     if person == "Don"
#       send_alert
#       return "Don"
#     end
#     if person == "John"
#       send_alert
#       return "John"
#     end
#   end
#   ""
# end
#
# def check_security(people)
#   found = found_miscreant(people)
#   some_later_code(found)
# end

def found_miscreant(people)
  if found_person(people)
    send_alert
  end
end

def found_person(people)
  people.each do |person|
    return "Don" if person == "Don"
    return "John" if person == "John"
  end
  ""
end

def check_security(people)
  found_miscreant(people)
  found = found_person(people)
  some_later_code(found)
end
