class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :product_id
      t.string :users
      t.string :avatar
      t.string :image_url

      t.timestamps null: false
    end
  end
end
