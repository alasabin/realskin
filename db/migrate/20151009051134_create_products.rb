class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :type
      t.decimal :price, precision: 8, scale: 2
      t.integer :count
      t.string :size
      t.string :brand
      t.string :color
      t.string :material

      t.timestamps null: false
    end
  end
end
