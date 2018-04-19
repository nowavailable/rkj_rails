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

ActiveRecord::Schema.define(version: 2018_04_19_041902) do

  create_table "acknowledgements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "body", null: false
    t.bigint "answer_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_acknowledgements_on_answer_id"
    t.index ["user_id"], name: "index_acknowledgements_on_user_id"
  end

  create_table "answers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.integer "seq_num", null: false
    t.text "body", null: false
    t.string "anchor", null: false
    t.bigint "user_id", null: false
    t.bigint "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentor_id"], name: "index_answers_on_mentor_id"
    t.index ["question_id", "seq_num"], name: "index_answers_on_question_id_and_seq_num", unique: true
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "change_email_requests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "email", null: false
    t.string "token", null: false
    t.timestamp "token_expired_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "created_at", null: false
    t.timestamp "verified_at"
    t.index ["token"], name: "index_change_email_requests_on_token", unique: true
    t.index ["user_id"], name: "index_change_email_requests_on_user_id"
  end

  create_table "joining_requests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.timestamp "token_expired_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "created_at", null: false
    t.timestamp "verified_at"
    t.index ["token"], name: "index_joining_requests_on_token", unique: true
  end

  create_table "mentors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mentors_on_user_id"
  end

  create_table "question_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "label", null: false
    t.boolean "is_active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "subject", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_category_id", null: false
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", null: false
    t.string "login", null: false
    t.bigint "joining_request_id"
    t.string "nickname", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["joining_request_id"], name: "index_users_on_joining_request_id"
    t.index ["login"], name: "index_users_on_login", unique: true
  end

end
