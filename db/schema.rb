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

ActiveRecord::Schema[7.0].define(version: 2023_09_07_174418) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "date_time"
    t.string "status", default: "pendente"
    t.boolean "is_voluntary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id"
    t.bigint "therapist_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["therapist_id"], name: "index_appointments_on_therapist_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id"
    t.bigint "therapist_id"
    t.string "name"
    t.index ["patient_id"], name: "index_chatrooms_on_patient_id"
    t.index ["therapist_id"], name: "index_chatrooms_on_therapist_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.boolean "is_read"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "chatroom_id", null: false
    t.bigint "user_id"
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "appointments_id"
    t.bigint "therapist_id"
    t.index ["appointments_id"], name: "index_reviews_on_appointments_id"
    t.index ["therapist_id"], name: "index_reviews_on_therapist_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "session_token"
    t.string "generated_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "username"
    t.string "password"
    t.string "name"
    t.string "surname"
    t.date "birthdate"
    t.text "description"
    t.string "specialty"
    t.string "picture_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "users", column: "patient_id"
  add_foreign_key "appointments", "users", column: "therapist_id"
  add_foreign_key "chatrooms", "users", column: "patient_id"
  add_foreign_key "chatrooms", "users", column: "therapist_id"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "reviews", "users", column: "therapist_id"
end
