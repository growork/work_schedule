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

ActiveRecord::Schema.define(version: 2020_11_28_170029) do

  create_table "days", force: :cascade do |t|
    t.integer "hours"
    t.string "time_interval"
    t.datetime "date"
    t.string "type"
    t.integer "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_days_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "service_number"
    t.integer "global_section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "work_overtime"
    t.boolean "independence"
    t.integer "morning"
    t.integer "evening"
    t.integer "duty"
    t.index ["global_section_id"], name: "index_employees_on_global_section_id"
  end

  create_table "global_sections", force: :cascade do |t|
    t.string "title"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_global_sections_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.integer "service_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "days", "employees"
  add_foreign_key "employees", "global_sections"
  add_foreign_key "global_sections", "users"
end
