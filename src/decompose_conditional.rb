# if date < SUMMER_START || date > SUMMER_END
#   charge = quantity * @winter_rate + @winter_service_charge
# else
#   charge = quantity * @summer_rate
# end

if winter?(date)
  charge = winter_charge(quantity)
else
  charge = summer_charge(quantity)
end

def winter?(date)
  date < SUMMER_START || date > SUMMER_END
end

def winter_charge(quantity)
  quantity * @winter_rate + @winter_service_charge
end

def summer_charge(quantity)
  quantity * @summer_rate
end
