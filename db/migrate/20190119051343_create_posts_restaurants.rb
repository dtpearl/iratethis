class CreatePostsRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_restaurants, :id => false do |t|
      t.integer :post_id
      t.integer :restaurant_id
    end
  end
end
