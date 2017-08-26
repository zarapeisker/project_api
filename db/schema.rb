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

ActiveRecord::Schema.define(version: 20170524050730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "app_countries_languages", id: false, force: :cascade do |t|
    t.bigint "language_id", null: false
    t.bigint "app_country_id", null: false
  end

  create_table "country_types", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.bigint "app_country_id"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_country_id"], name: "index_country_types_on_app_country_id"
    t.index ["student_id"], name: "index_country_types_on_student_id"
    t.index ["teacher_id"], name: "index_country_types_on_teacher_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "subject_id"
    t.integer "ages", default: [], array: true
    t.integer "work_experience"
    t.integer "teaching_experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_experiences_on_subject_id"
    t.index ["teacher_id"], name: "index_experiences_on_teacher_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages_students", id: false, force: :cascade do |t|
    t.bigint "language_id", null: false
    t.bigint "student_id", null: false
  end

  create_table "languages_teachers", id: false, force: :cascade do |t|
    t.bigint "language_id", null: false
    t.bigint "teacher_id", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.bigint "language_id"
    t.bigint "app_country_id"
    t.string "name"
    t.string "time_zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_country_id"], name: "index_organizations_on_app_country_id"
    t.index ["language_id"], name: "index_organizations_on_language_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "stars"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.bigint "language_id"
    t.bigint "subject_id"
    t.bigint "review_id"
    t.datetime "appointment"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_sessions_on_language_id"
    t.index ["review_id"], name: "index_sessions_on_review_id"
    t.index ["student_id"], name: "index_sessions_on_student_id"
    t.index ["subject_id"], name: "index_sessions_on_subject_id"
    t.index ["teacher_id"], name: "index_sessions_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "organization_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "skype_id"
    t.text "description"
    t.string "time_zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_students_on_organization_id"
  end

  create_table "students_subjects", id: false, force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "subject_id", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.bigint "organization_id"
    t.string "given_name"
    t.string "family_name"
    t.string "name"
    t.string "email"
    t.string "picture"
    t.string "skype_id"
    t.string "linkedin"
    t.text "description"
    t.string "time_zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_teachers_on_organization_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "country_types", "app_countries"
  add_foreign_key "country_types", "students"
  add_foreign_key "country_types", "teachers"
  add_foreign_key "experiences", "subjects"
  add_foreign_key "experiences", "teachers"
  add_foreign_key "organizations", "app_countries"
  add_foreign_key "organizations", "languages"
  add_foreign_key "sessions", "languages"
  add_foreign_key "sessions", "reviews"
  add_foreign_key "sessions", "students"
  add_foreign_key "sessions", "subjects"
  add_foreign_key "sessions", "teachers"
  add_foreign_key "students", "organizations"
  add_foreign_key "teachers", "organizations"
end
