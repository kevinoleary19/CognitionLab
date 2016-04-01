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

ActiveRecord::Schema.define(version: 20160329032440) do

  create_table "emotional_answers", force: :cascade do |t|
    t.integer  "emotional_form_answer_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "emotional_form_answers", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emotional_forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emotional_questions", force: :cascade do |t|
    t.integer  "emotional_form_id"
    t.integer  "emotional_answer_id"
    t.string   "question"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "multiple_choice_answers", force: :cascade do |t|
    t.integer  "emotional_question_id"
    t.integer  "emotional_answer_id"
    t.string   "answer"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "person_answers", force: :cascade do |t|
    t.string   "person"
    t.integer  "video_form_answer_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "person_questions", force: :cascade do |t|
    t.string   "question"
    t.boolean  "is_two_part"
    t.integer  "video_form_id"
    t.integer  "person_answer_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "social_form_answers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_form_question_answers", force: :cascade do |t|
    t.integer  "social_form_answer_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "social_form_questions", force: :cascade do |t|
    t.string   "question"
    t.integer  "social_form_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "social_forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.string   "email"
    t.string   "video_question_1"
    t.string   "video_question_2"
    t.string   "video_question_3"
    t.string   "video_question_4"
    t.string   "social_level"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "video_form_answers", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
