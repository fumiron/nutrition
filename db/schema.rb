# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_22_093121) do

  create_table "foods", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.float "calorie"
    t.float "protein"
    t.float "fat"
    t.float "saturated_fat"
    t.float "n_6_fat"
    t.float "n_3_fat"
    t.float "cholesterol"
    t.float "carbohydrate"
    t.float "dietary_fiber"
    t.float "vitamin_a"
    t.float "vitamin_d"
    t.float "vitamin_e"
    t.float "vitamin_k"
    t.float "vitamin_b1"
    t.float "vitamin_b2"
    t.float "vitamin_b6"
    t.float "vitamin_b12"
    t.float "vitamin_c"
    t.float "niacin"
    t.float "folate"
    t.float "pantothenic"
    t.float "biotin"
    t.float "sodium"
    t.float "potassium"
    t.float "calcium"
    t.float "magnesium"
    t.float "phosphorus"
    t.float "iron"
    t.float "zinc"
    t.float "copper"
    t.float "manganese"
    t.float "iodine"
    t.float "selenium"
    t.float "chromium"
    t.float "molybdenum"
    t.float "salt"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_foods_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "foods", "users"
end
