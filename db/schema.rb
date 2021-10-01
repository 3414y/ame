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

ActiveRecord::Schema.define(version: 2021_09_29_023523) do

  create_table "gakkas", force: :cascade do |t|
    t.string "gakkamei"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kigyous", force: :cascade do |t|
    t.string "kigyoumei"
    t.integer "syokusyu_id"
    t.boolean "kennnai"
    t.string "khp"
    t.float "hyoutei"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "syokusyus", force: :cascade do |t|
    t.string "syokusyumei"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "syuusyokus", force: :cascade do |t|
    t.string "gakkoumei"
    t.integer "gakka_id"
    t.string "kennai"
    t.string "shp"
    t.float "hyoutei"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
