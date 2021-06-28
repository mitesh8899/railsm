class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :Admin
      t.string :title
      t.string :description
      t.string :image_url
      t.decimal :price
      t.datetime :date_available

      t.timestamps
    end
  end
end
