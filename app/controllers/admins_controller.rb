class AdminsController < ApplicationController
  def list
    @products = Product.all
  end
end
