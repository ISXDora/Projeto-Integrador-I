# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_06_001225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "baskets", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "ribbon_id", null: false
    t.bigint "location_id", null: false
    t.index ["location_id"], name: "index_baskets_on_location_id"
    t.index ["ribbon_id"], name: "index_baskets_on_ribbon_id"
  end

  create_table "casts", force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "actor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_id"], name: "index_casts_on_actor_id"
    t.index ["film_id"], name: "index_casts_on_film_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_films_on_category_id"
  end

  create_table "locations", force: :cascade do |t|
    t.date "devolved_date"
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_locations_on_client_id"
  end

  create_table "ribbons", force: :cascade do |t|
    t.bigint "film_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["film_id"], name: "index_ribbons_on_film_id"
  end

  add_foreign_key "baskets", "locations", on_delete: :cascade
  add_foreign_key "baskets", "ribbons", on_delete: :cascade
  add_foreign_key "casts", "actors"
  add_foreign_key "casts", "films", on_delete: :cascade
  add_foreign_key "films", "categories"
  add_foreign_key "locations", "clients"
  add_foreign_key "ribbons", "films", on_delete: :cascade
end
