class ShopsController < ApplicationController
    def show
        @shop = Shop.find(params[:id])
        logger.debug(@shop)
      end
end
