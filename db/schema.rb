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

ActiveRecord::Schema.define(version: 20180514113704) do

  create_table "approve_informations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "fix_id"
    t.bigint "from_level_id"
    t.bigint "to_level_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fix_id"], name: "index_approve_informations_on_fix_id"
    t.index ["from_level_id"], name: "index_approve_informations_on_from_level_id"
    t.index ["to_level_id"], name: "index_approve_informations_on_to_level_id"
    t.index ["user_id"], name: "index_approve_informations_on_user_id"
  end

  create_table "fix_numbers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fixes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "number"
    t.text "description"
    t.bigint "level_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "ww_development"
    t.index ["level_id"], name: "index_fixes_on_level_id"
    t.index ["user_id"], name: "index_fixes_on_user_id"
  end

  create_table "levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "test_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.bigint "member_type_id"
    t.bigint "promotion_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_type_id"], name: "index_members_on_member_type_id"
    t.index ["promotion_form_id"], name: "index_members_on_promotion_form_id"
  end

  create_table "promotion_forms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.bigint "fix_id"
    t.text "description"
    t.bigint "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fix_id"], name: "index_promotion_forms_on_fix_id"
    t.index ["level_id"], name: "index_promotion_forms_on_level_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "approve_informations", "fixes"
  add_foreign_key "approve_informations", "users"
  add_foreign_key "fixes", "users"
  add_foreign_key "members", "member_types"
  add_foreign_key "members", "promotion_forms"
  add_foreign_key "promotion_forms", "fixes"
end
