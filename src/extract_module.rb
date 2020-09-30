# class Bid
#   before_save :capture_account_number
#   def capture_account_number
#     self.account_number = buyer.preferred_account_number
#   end
# end
#
# class Sale
#   before_save :capture_account_number
#   def capture_account_number
#     self.account_number = buyer.preferred_account_number
#   end
# end

module AccountNumberCapture
  def self.included(klass)
    klass.class_eval do
      before_save :capture_account_number
    end
  end

  def capture_account_number
    self.account_number = buyer.preferred_account_number
  end
end

class Bid
  include AccountNumberCapture
end

class Sale
  include AccountNumberCapture
end
