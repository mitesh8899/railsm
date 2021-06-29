class AddProductToLineItems < ActiveRecord::Migration[6.1]
  def change
    add_column :line_items, :product_id, :integer
    add_foreign_key :line_items, :products
    
    add_column :line_items, :order_id, :integer
    add_foreign_key :line_items, :orders

  end
end
