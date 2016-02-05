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

ActiveRecord::Schema.define(version: 20160205104755) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "fortunes", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description_fr"
    t.text     "description_en"
    t.text     "description_cn"
    t.integer  "age"
    t.string   "money_fr"
    t.string   "money_en"
    t.string   "money_cn"
    t.integer  "global_ranking"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "first_name_cn"
  end

  create_table "members", force: :cascade do |t|
    t.string   "picture"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presentation_photos", force: :cascade do |t|
    t.string   "file"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "press_articles", force: :cascade do |t|
    t.string   "file"
    t.string   "title"
    t.string   "source"
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "press_links", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.text     "text_fr"
    t.text     "text_en"
    t.text     "text_cn"
    t.string   "author_fr"
    t.string   "author_en"
    t.string   "author_cn"
    t.string   "author_statut_fr"
    t.string   "author_statut_en"
    t.string   "author_statut_cn"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
