class CreateCartProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_products do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.belongs_to :cart, foreign_key: true
      t.integer :quantity, default: 1
      t.timestamps
    end
  end
end
