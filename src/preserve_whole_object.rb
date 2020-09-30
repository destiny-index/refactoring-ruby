# class Room
#   def within_plan?(plan)
#     low = days_temperature_range.low
#     high = days_temperature_range.high
#     plan.within_range?(low, high)
#   end
# end
#
# class HeatingPlan
#   def within_range?(low, high)
#     (low >= @range.low) && (high <= @range.high)
#   end
# end

class Room
  def within_plan?(plan)
    plan.within_range?(days_temperature_range)
  end
end

class HeatingPlan
  def within_range?(room_range)
    @range.includes?(room_range)
  end
end

class TempRange
  def includes?(temperature_range)
    (temperature_range.low >= low) && (temperature_range.high <= high)
  end
end
