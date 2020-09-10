class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        @coupon = Coupon.new
    end

    def create
        coupon = Coupon.create(coupon_params)
        # coupon = Coupon.new 
        # coupon.coupon_code = params[:coupon][:coupon_code]
        # coupon.store = params[:coupon][:store]
        # coupon.save
        redirect_to coupon
    end
    


    private 

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end
end
