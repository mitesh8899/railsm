class AddUnitPriceToLineItems < ActiveRecord::Migration[6.1]
  def change
    add_column :line_items, :unit_price, :decimal
  end
end
