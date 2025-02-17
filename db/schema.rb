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

ActiveRecord::Schema[7.2].define(version: 2025_02_09_193020) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "auto_parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engine_parts", force: :cascade do |t|
    t.string "ebs_number"
    t.string "car_make"
    t.string "chassis_number"
    t.string "engine_number"
    t.integer "engine_cc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "part_groups", force: :cascade do |t|
    t.bigint "shipment_id", null: false
    t.string "partable_type", null: false
    t.bigint "partable_id", null: false
    t.integer "quantity"
    t.integer "unit_price"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partable_type", "partable_id"], name: "index_part_groups_on_partable"
    t.index ["shipment_id"], name: "index_part_groups_on_shipment_id"
  end

  create_table "part_units", force: :cascade do |t|
    t.bigint "part_group_id", null: false
    t.string "qr_code"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_group_id"], name: "index_part_units_on_part_group_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.string "invoice_number"
    t.date "date"
    t.string "shipped_from_country"
    t.string "shipped_from_city"
    t.string "shipped_to_country"
    t.string "shipped_to_city"
    t.string "container_number"
    t.string "EBS_number"
    t.string "sold_to_company"
    t.string "sold_to_address"
    t.string "sold_to_zip"
    t.string "sold_to_email"
    t.string "sold_to_phone"
    t.integer "total_quantity"
    t.integer "total_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "part_groups", "shipments"
  add_foreign_key "part_units", "part_groups"
end
