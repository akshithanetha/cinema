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

ActiveRecord::Schema[7.0].define(version: 2023_05_10_045315) do
  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.integer "cinema_id"
    t.index ["cinema_id"], name: "index_actors_on_cinema_id"
  end

  create_table "actors_languages", id: false, force: :cascade do |t|
    t.integer "actor_id", null: false
    t.integer "language_id", null: false
    t.index ["actor_id", "language_id"], name: "index_actors_languages_on_actor_id_and_language_id"
  end

  create_table "assistants", force: :cascade do |t|
    t.string "assistable_type", null: false
    t.integer "assistable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assistable_type", "assistable_id"], name: "index_assistants_on_assistable"
  end

  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "language"
    t.text "description"
    t.integer "actors_count"
  end

  create_table "collections", force: :cascade do |t|
    t.string "budget"
    t.string "box_ofice"
    t.integer "cinema_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_collections_on_cinema_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remuneration_histories", force: :cascade do |t|
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "actor_id", null: false
    t.index ["actor_id"], name: "index_remuneration_histories_on_actor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "actors", "cinemas"
  add_foreign_key "collections", "cinemas"
  add_foreign_key "remuneration_histories", "actors"
end
