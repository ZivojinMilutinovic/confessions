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

ActiveRecord::Schema[7.0].define(version: 2024_04_17_132621) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "duration"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["status"], name: "index_challenges_on_status"
    t.index ["title"], name: "index_challenges_on_title"
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.integer "likes", default: 0
    t.integer "dislikes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "confession_id"
    t.bigint "parent_comment_id"
    t.integer "status", default: 0
    t.index ["confession_id"], name: "index_comments_on_confession_id"
    t.index ["parent_comment_id"], name: "index_comments_on_parent_comment_id"
    t.index ["status"], name: "index_comments_on_status"
  end

  create_table "confession_categories", force: :cascade do |t|
    t.bigint "confession_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_confession_categories_on_category_id"
    t.index ["confession_id"], name: "index_confession_categories_on_confession_id"
  end

  create_table "confessions", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "likes", default: 0
    t.integer "dislikes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_comments", default: 0
    t.bigint "challenge_id"
    t.integer "status", default: 0
    t.index ["challenge_id"], name: "index_confessions_on_challenge_id"
    t.index ["status"], name: "index_confessions_on_status"
    t.index ["title"], name: "index_confessions_on_title"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "comments", column: "parent_comment_id"
  add_foreign_key "comments", "confessions"
  add_foreign_key "confession_categories", "categories"
  add_foreign_key "confession_categories", "confessions"
  add_foreign_key "confessions", "challenges"
end
