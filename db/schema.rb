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

ActiveRecord::Schema.define(version: 2021_01_24_221741) do

  create_table "inventories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "project_plan_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_plan_id"], name: "index_inventories_on_project_plan_id"
  end

  create_table "project_plans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string "item"
    t.integer "project_plan_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_plan_id"], name: "index_supplies_on_project_plan_id"
  end

  add_foreign_key "inventories", "project_plans"
  add_foreign_key "supplies", "project_plans"
end
