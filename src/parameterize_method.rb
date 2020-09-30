# def base_charge
#   result = [last_usage, 100].min * 0.03
#
#   if last_usage > 100
#     result += ([last_usage, 200].min - 100) * 0.05
#   end
#
#   if last_usage > 200
#     result += (last_usage - 200) * 0.07
#   end
#
#   Dollar.new(result)
# end
#
# def last_usage
#   #...
# end

def base_charge
  result = (usage_in_range 0..100) * 0.03
  result += (usage_in_range 100..200) * 0.05
  result += (usage_in_range 200..last_usage) * 0.07
  Dollar.new(result)
end

def usage_in_range(range)
  if last_usage > range.begin
    [last_usage, range.end].min - range.begin
  else
    0
  end
end

def last_usage
  #...
end
