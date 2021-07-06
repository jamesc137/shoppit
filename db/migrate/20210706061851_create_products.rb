class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.text :sizes, array:true, default: []
      t.text :colors, array:true, default: []
      t.float :price
      t.float :shipping_price
      t.integer :shop_id

      t.timestamps
    end
  end
end
