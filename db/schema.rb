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

ActiveRecord::Schema.define(version: 20170307175633) do

  create_table "activities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "starttime"
    t.datetime "endtime"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "number"
    t.integer  "place_id"
    t.integer  "deltbet"
    t.index ["person_id"], name: "index_activities_on_person_id", using: :btree
    t.index ["place_id"], name: "index_activities_on_place_id", using: :btree
  end

  create_table "assignments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "person_id"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_assignments_on_person_id", using: :btree
    t.index ["task_id"], name: "index_assignments_on_task_id", using: :btree
  end

  create_table "housing_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "member_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "paid"
    t.string   "payment_link"
    t.index ["member_id"], name: "index_invoices_on_member_id", using: :btree
  end

  create_table "members", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "housing_type_id"
    t.string   "housing_number"
    t.index ["housing_type_id"], name: "index_members_on_housing_type_id", using: :btree
  end

  create_table "passwords", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "password"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_passwords_on_member_id", using: :btree
  end

  create_table "people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "member_id"
    t.integer  "ptype_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "aargang"
    t.string   "koen"
    t.integer  "invoice_id"
    t.integer  "housing_type_id"
    t.string   "housing_number"
    t.string   "phone"
    t.integer  "host_member"
    t.index ["housing_type_id"], name: "index_people_on_housing_type_id", using: :btree
    t.index ["invoice_id"], name: "index_people_on_invoice_id", using: :btree
    t.index ["member_id"], name: "index_people_on_member_id", using: :btree
    t.index ["ptype_id"], name: "index_people_on_ptype_id", using: :btree
  end

  create_table "places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.string   "limited"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "ptypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "price"
    t.boolean  "datereq",    default: false
  end

  create_table "tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.integer  "activity_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "number"
    t.datetime "time"
    t.index ["activity_id"], name: "index_tasks_on_activity_id", using: :btree
  end

  create_table "tickets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "person_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "invoice_id"
    t.index ["activity_id"], name: "index_tickets_on_activity_id", using: :btree
    t.index ["invoice_id"], name: "index_tickets_on_invoice_id", using: :btree
    t.index ["person_id"], name: "index_tickets_on_person_id", using: :btree
  end

  create_table "words", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activities", "people"
  add_foreign_key "activities", "places"
  add_foreign_key "assignments", "people"
  add_foreign_key "assignments", "tasks"
  add_foreign_key "invoices", "members"
  add_foreign_key "members", "housing_types"
  add_foreign_key "passwords", "members"
  add_foreign_key "people", "housing_types"
  add_foreign_key "people", "invoices"
  add_foreign_key "people", "members"
  add_foreign_key "people", "ptypes"
  add_foreign_key "tasks", "activities"
  add_foreign_key "tickets", "activities"
  add_foreign_key "tickets", "invoices"
  add_foreign_key "tickets", "people"
end
