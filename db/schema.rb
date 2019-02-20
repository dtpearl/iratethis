ActiveRecord::Schema.define(version: 2019_01_23_234852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "comment_text"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "post_text"
    t.text "post_image"
    t.integer "likes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts_restaurants", force: :cascade do |t|
    t.integer "post_id"
    t.integer "restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.text "restaurant_name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
