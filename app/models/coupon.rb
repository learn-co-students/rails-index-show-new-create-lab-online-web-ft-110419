class Coupon < ActiveRecord::Base 
  def coupon_and_store
    self.coupon_code + " - " + self.store
  end
end 