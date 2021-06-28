class StoresController < ApplicationController
  def index
    @products = Product.all#salable_items
  end

  def add_to_cart
    @product = Product.find(params[:id])
    @cart = find_cart
    @cart.add_product(product)
    redirect_to display_cart
  rescue
    logger.error("Attempt to access invalid product #{params[:id]}")
    flash[:notice] = ' Invalid product '
    redirect_to products_path
  end

  def display_cart
    @cart = find_cart
    @items = @cart.items
  end

  def empty_cart
    @cart = find_cart
    @cart.empty!
    flash[:notice] = ' Your cart is now empty '
    redirect_to products_path
  end

  def checkout
    @cart = find_cart
    @items = @cart.items
    if @items.empty?
      redirect_to_index("There ' s nothing in your cart!")
    else
      @order = Order.new
    end
  end

  private 
  def find_cart
    session[:cart] ||= Cart.new
  end 

end