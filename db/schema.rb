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
    t.integer "calorie"
    t.integer "protein"
    t.integer "fat"
    t.integer "saturated_fat"
    t.integer "n_6_fat"
    t.integer "n_3_fat"
    t.integer "cholesterol"
    t.integer "carbohydrate"
    t.integer "dietary_fiber"
    t.integer "vitamin_a"
    t.integer "vitamin_d"
    t.integer "vitamin_e"
    t.integer "vitamin_k"
    t.integer "vitamin_b1"
    t.integer "vitamin_b2"
    t.integer "vitamin_b6"
    t.integer "vitamin_b12"
    t.integer "vitamin_c"
    t.integer "niacin"
    t.integer "folate"
    t.integer "pantothenic"
    t.integer "natrium"
    t.integer "potassium"
    t.integer "calcium"
    t.integer "magnesium"
    t.integer "phosphorus"
    t.integer "iron"
    t.integer "zinc"
    t.integer "copper"
    t.integer "manganese"
    t.integer "iodine"
    t.integer "selenium"
    t.integer "chromium"
    t.integer "molybdenum"
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
