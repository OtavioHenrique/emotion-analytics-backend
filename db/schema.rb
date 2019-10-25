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

ActiveRecord::Schema.define(version: 2019_10_20_233846) do

  create_table "emotions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "anger"
    t.integer "contempt"
    t.integer "disgusted"
    t.integer "fear"
    t.integer "joy"
    t.integer "sadness"
    t.integer "valence"
    t.integer "engagement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expressions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "attention"
    t.integer "brow_furrow"
    t.integer "brow_raise"
    t.integer "cheek_raise"
    t.integer "chin_raise"
    t.integer "dimpler"
    t.integer "eye_closure"
    t.integer "eye_widen"
    t.integer "inner_brow_raise"
    t.integer "jaw_drop"
    t.integer "lid_tighten"
    t.integer "lip_corner_depressor"
    t.integer "lip_press"
    t.integer "lip_pucker"
    t.integer "lip_stretch"
    t.integer "lip_suck"
    t.integer "mouth_open"
    t.integer "nose_wrinkle"
    t.integer "smile"
    t.integer "smirk"
    t.integer "upper_lip_raise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occurrences", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "test_id"
    t.bigint "expression_id"
    t.bigint "emotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emotion_id"], name: "index_occurrences_on_emotion_id"
    t.index ["expression_id"], name: "index_occurrences_on_expression_id"
    t.index ["test_id"], name: "index_occurrences_on_test_id"
  end

  create_table "test_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "start_url"
    t.text "objective"
    t.boolean "allow_abandonment"
  end

  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "abandoned"
    t.bigint "test_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_type_id"], name: "index_tests_on_test_type_id"
  end

  add_foreign_key "occurrences", "emotions"
  add_foreign_key "occurrences", "expressions"
  add_foreign_key "occurrences", "tests"
  add_foreign_key "tests", "test_types"
end
