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

ActiveRecord::Schema[7.0].define(version: 2023_04_21_175145) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beta_readers", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.text "feedback_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer "project_id"
    t.string "name"
    t.string "birthday"
    t.string "age"
    t.text "physical_attributes"
    t.text "likes"
    t.text "dislikes"
    t.text "hobbies"
    t.string "favorite_food"
    t.string "misc1"
    t.string "misc2"
    t.string "misc3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "project_id"
    t.string "note_title"
    t.string "chapter_title"
    t.text "note"
    t.string "source_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "working_title"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "worlds", force: :cascade do |t|
    t.integer "project_id"
    t.string "name"
    t.string "time_period"
    t.text "physics"
    t.text "culture"
    t.text "misc1"
    t.text "misc2"
    t.text "misc3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
