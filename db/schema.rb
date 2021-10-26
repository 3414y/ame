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

ActiveRecord::Schema.define(version: 2021_09_29_023809) do

  create_table "gakkas", force: :cascade do |t|
    t.string "gakkamei"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kaitous", force: :cascade do |t|
    t.integer "user_id"
    t.text "hentou"
    t.integer "situmon_id"
    t.datetime "nitiji"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kigyous", force: :cascade do |t|
    t.string "kigyoumei"
    t.string "syokusyu_id"
    t.boolean "kennnai"
    t.string "khp"
    t.float "hyoutei"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kyoukas", force: :cascade do |t|
    t.integer "gakunen"
    t.integer "senkou"
    t.string "namae"
    t.integer "narabi"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seisekis", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gakunen"
    t.integer "gakki"
    t.integer "kyouka_id"
    t.integer "tokuten"
    t.integer "narabi"
    t.integer "hyoutei"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "situmons", force: :cascade do |t|
    t.integer "user_id"
    t.text "naiyou"
    t.integer "kategori"
    t.datetime "nitiji"
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
    t.string "gakka_id"
    t.boolean "kennai"
    t.string "shp"
    t.float "hyoutei"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "akaunto"
    t.string "pasuwado"
    t.integer "gakunen"
    t.integer "kumi"
    t.string "simei"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
