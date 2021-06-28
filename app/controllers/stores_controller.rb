class StoresController < ApplicationController
  def index
    @products = Product.all#salable_items
  end

  def add_to_cart
    product = Product.find(params[:id])
    @cart = find_cart
    @cart.add_product(product)
    redirect_to display_cart
  rescue
    logger.error("Attempt to access invalid product #{params[:id]}")
    flash[:notice] = ' Invalid product '
    redirect_to index
  end

  def display_cart
    @cart = find_cart
    @items = @cart.items
  end

  private 
  def find_cart
    session[:cart] ||= Cart.new
  end 

end