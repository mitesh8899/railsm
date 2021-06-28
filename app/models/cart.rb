class Cart < ApplicationRecord
  attr_reader :items
  attr_reader :total_price

  def initialize
      @items = []
      @total_price = 0.0
  end

  def items
      @items
  end
  
  def add_product(product)
    item = @items.find {|i| i.product_id == product.id}
    if item
      item.quantity += 1
    else
      item = LineItem.for_product(product)
      @items << item
    end
      @total_price += item.unit_price
  end
  
end