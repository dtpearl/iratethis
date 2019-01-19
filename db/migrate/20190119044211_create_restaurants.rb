class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.text :restaurant_name
      t.text :address

      t.timestamps
    end
  end
end
