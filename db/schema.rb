# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160504193118) do

  create_table "appointments", force: :cascade do |t|
    t.string   "duration",   limit: 255
    t.string   "diagnostic", limit: 255
    t.integer  "patient_id", limit: 4
    t.integer  "dentist_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.date     "date"
    t.time     "begin"
    t.time     "end"
    t.float    "cost",       limit: 24
    t.string   "treatments", limit: 255
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
  end

  add_index "appointments", ["dentist_id"], name: "index_appointments_on_dentist_id", using: :btree
  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id", using: :btree

  create_table "appointments_materials", force: :cascade do |t|
    t.integer "appointment_id", limit: 4
    t.integer "material_id",    limit: 4
  end

  add_index "appointments_materials", ["appointment_id"], name: "index_appointments_materials_on_appointment_id", using: :btree
  add_index "appointments_materials", ["material_id"], name: "index_appointments_materials_on_material_id", using: :btree

  create_table "assistants", force: :cascade do |t|
    t.string   "name",                   limit: 50,  null: false
    t.string   "surname",                limit: 50,  null: false
    t.string   "address",                limit: 255, null: false
    t.string   "phone",                  limit: 30,  null: false
    t.string   "social_security_number", limit: 40,  null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "dentists", force: :cascade do |t|
    t.string  "name",         limit: 50,  null: false
    t.string  "surname",      limit: 50,  null: false
    t.string  "specialty",    limit: 100
    t.string  "address",      limit: 255, null: false
    t.string  "phone",        limit: 30,  null: false
    t.string  "mail",         limit: 100, null: false
    t.string  "rfc",          limit: 255, null: false
    t.integer "assistant_id", limit: 4
  end

  add_index "dentists", ["assistant_id"], name: "index_dentists_on_assistant_id", using: :btree

  create_table "materials", force: :cascade do |t|
    t.string  "name",        limit: 50, null: false
    t.integer "quantity",    limit: 4,  null: false
    t.integer "supplier_id", limit: 4
  end

  add_index "materials", ["supplier_id"], name: "index_materials_on_supplier_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "name",          limit: 50,  null: false
    t.string   "surname",       limit: 50,  null: false
    t.string   "lastname",      limit: 30
    t.date     "birth_date"
    t.string   "phone",         limit: 30,  null: false
    t.string   "cellphone",     limit: 30
    t.string   "address",       limit: 255
    t.string   "recomendation", limit: 255
    t.string   "parents",       limit: 255
    t.string   "mail",          limit: 100, null: false
    t.string   "gender",        limit: 255, null: false
    t.string   "rfc",           limit: 255, null: false
    t.integer  "dentist_id",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "patients", ["dentist_id"], name: "index_patients_on_dentist_id", using: :btree

  create_table "suppliers", force: :cascade do |t|
    t.string   "name",       limit: 50,  null: false
    t.string   "address",    limit: 100, null: false
    t.string   "phone",      limit: 30,  null: false
    t.string   "rfc",        limit: 30,  null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
