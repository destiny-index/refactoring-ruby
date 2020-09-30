# module MountainBike
#   def price
#     case @type_code
#     when :rigid
#       (1 + @commission) * @base_price
#     when :front_suspension
#       (1 + @commission) * @base_price +
#         @front_suspension_price
#     when :full_suspension
#       (1 + @commission) * @base_price +
#         @front_suspension_price +
#         @rear_suspension_price
#     end
#   end
# end
#
# class RigidMountainBike
#   include MountainBike
# end
#
# class FrontSuspensionMountainBike
#   include MountainBike
# end
#
# class FullSuspensionMountainBike
#   include MountainBike
# end
#
# rigid_bike = RigidMountainBike.new(
#   :type_code => :rigid,
#   :base_price => 300,
#   :commission => 0.1
# )
# total += rigid_bike.price
#
# front_suspension_bike = FrontSuspensionMountainBike.new(
#   :type_code => :front_suspension,
#   :base_price => 500,
#   :commission => 0.15
# )
# total += front_suspension_bike.price

module MountainBike
end

class RigidMountainBike
  include MountainBike

  def price
    (1 + @commission) * @base_price
  end
end

class FrontSuspensionMountainBike
  include MountainBike

  def price
    (1 + @commission) * @base_price +
      @front_suspension_price
  end
end

class FullSuspensionMountainBike
  include MountainBike

  def price
    (1 + @commission) * @base_price +
      @front_suspension_price +
      @rear_suspension_price
  end
end

rigid_bike = RigidMountainBike.new(
  :type_code => :rigid,
  :base_price => 300,
  :commission => 0.1
)
total += rigid_bike.price

front_suspension_bike = FrontSuspensionMountainBike.new(
  :type_code => :front_suspension,
  :base_price => 500,
  :commission => 0.15
)
total += front_suspension_bike.price
