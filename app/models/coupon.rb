class Coupon < ActiveRecord::Base
    
    def display
        "Store: #{self.store} Code: #{self.coupon_code}"
    end

end