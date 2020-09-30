# def check_security(people)
#   found = false
#   people.each do |person|
#     unless found
#       if person == "Don"
#         send_alert
#         found = true
#       end
#       if person == "John"
#         send_alert
#         found = true
#       end
#     end
#   end
# end

def check_security(people)
  found = false
  people.each do |person|
    if person == "Don"
      send_alert
      break
    end
    if person == "John"
      send_alert
      break
    end
  end
end

# def check_security(people)
#   found = ""
#   people.each do |person|
#     if found == ""
#       if person == "Don"
#         send_alert
#         found = "Don"
#       end
#       if person == "John"
#         send_alert
#         found = "John"
#       end
#     end
#   end
#   some_later_code(found)
# end

def check_security(people)
  found_miscreant(people)
  some_later_code(found)
end

def found_miscreant(people)
  people.each do |person|
    if person == "Don"
      send_alert
      return "Don"
    end
    if person == "John"
      send_alert
      return "John"
    end
  end
  return ""
end
