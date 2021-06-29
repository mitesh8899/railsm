class AdminsController < ApplicationController
  def list
    @products = Product.all
  end

  def ship
    @pending_orders = Order.pending_shipping
  end

end
