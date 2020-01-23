class CouponsController < ApplicationController
	def index
		@coupons = Coupon.all 
	end
	def show
		@coupon = Coupon.find(params[:id])
	end

	def new

	end 

	def create
		coupon = Coupon.new
		coupon.update(params.require(:coupon).permit(:store, :coupon_code))
		coupon.save
		redirect_to coupon_path(coupon.id)
	end
end