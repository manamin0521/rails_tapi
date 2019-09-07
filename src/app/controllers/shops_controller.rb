class ShopsController < ApplicationController
    def show
        @shop = Shop.find(params[:id])
        t1 = Time.now
        t2 = t1 + 10
      end
end
