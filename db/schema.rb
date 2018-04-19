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

ActiveRecord::Schema.define(version: 2018_04_19_045959) do

  create_table "acknowledgements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "body", null: false
    t.bigint "answer_id", null: false
    t.integer "seq_num", null: false
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["answer_id", "seq_num"], name: "index_acknowledgements_on_answer_id_and_seq_num", unique: true
    t.index ["answer_id"], name: "index_acknowledgements_on_answer_id"
  end

  create_table "answers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.integer "seq_num", null: false
    t.text "body", null: false
    t.string "anchor", null: false
    t.bigint "user_id", null: false
    t.bigint "mentor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentor_id"], name: "index_answers_on_mentor_id"
    t.index ["question_id", "anchor"], name: "index_answers_on_question_id_and_anchor", unique: true
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

  create_table "notification_sends", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "notification_id", null: false
    t.timestamp "sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notification_id"], name: "index_notification_sends_on_notification_id"
  end

  create_table "notifications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "message_body", null: false
    t.bigint "dst_user_id"
    t.integer "src_event_id", null: false
    t.string "src_event_type", null: false
    t.integer "src_user_id"
    t.boolean "is_read", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dst_user_id", "src_event_id", "src_event_type"], name: "idx_notifications", unique: true
  end

  create_table "question_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "label", null: false
    t.boolean "is_active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["label"], name: "index_question_categories_on_label", unique: true
  end

  create_table "question_categories_questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "question_category_id", null: false
    t.bigint "question_id", null: false
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["question_category_id"], name: "index_question_categories_questions_on_question_category_id"
    t.index ["question_id", "question_category_id"], name: "idx_question_categories_questions", unique: true
    t.index ["question_id"], name: "index_question_categories_questions_on_question_id"
  end

  create_table "questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "subject", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", null: false
    t.string "login", null: false
    t.date "birthday"
    t.bigint "joining_request_id"
    t.string "nickname", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["joining_request_id"], name: "index_users_on_joining_request_id"
    t.index ["login"], name: "index_users_on_login", unique: true
  end

  create_table "votings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "answer_id", null: false
    t.bigint "user_id", null: false
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["answer_id", "user_id"], name: "idx_votings", unique: true
    t.index ["answer_id"], name: "index_votings_on_answer_id"
    t.index ["user_id"], name: "index_votings_on_user_id"
  end

  add_foreign_key "acknowledgements", "answers"
  add_foreign_key "answers", "mentors"
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "change_email_requests", "users"
  add_foreign_key "mentors", "users"
  add_foreign_key "notification_sends", "notifications"
  add_foreign_key "notifications", "users", column: "dst_user_id"
  add_foreign_key "question_categories_questions", "question_categories"
  add_foreign_key "question_categories_questions", "questions"
  add_foreign_key "questions", "users"
  add_foreign_key "votings", "answers"
  add_foreign_key "votings", "users"
end
