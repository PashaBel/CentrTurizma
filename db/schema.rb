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

ActiveRecord::Schema.define(version: 2019_03_19_191328) do

  create_table "centers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "district_id", null: false
    t.integer "locality_id", null: false
    t.string "email", limit: 50, null: false
    t.index ["name"], name: "index_centers_on_name", unique: true
  end

  create_table "districts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "region_id", null: false
    t.string "name", limit: 20, null: false
    t.index ["name"], name: "index_districts_on_name", unique: true
  end

  create_table "institutions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "email", limit: 30, null: false
    t.integer "center_id", null: false
    t.integer "locality_id", null: false
    t.index ["email"], name: "index_institutions_on_email", unique: true
    t.index ["name"], name: "index_institutions_on_name", unique: true
  end

  create_table "localities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 30, null: false
    t.integer "district_id", null: false
    t.integer "locality_type_id", null: false
    t.index ["name", "district_id"], name: "index_localities_on_name_and_district_id", unique: true
    t.index ["name"], name: "index_localities_on_name", unique: true
  end

  create_table "locality_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.index ["name"], name: "index_locality_types_on_name", unique: true
  end

  create_table "point_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.index ["name"], name: "index_point_types_on_name", unique: true
  end

  create_table "points", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.text "description"
    t.integer "point_type_id", null: false
    t.integer "district_id", null: false
    t.integer "locality_id", null: false
    t.index ["name"], name: "index_points_on_name", unique: true
  end

  create_table "regions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.index ["name"], name: "index_regions_on_name", unique: true
  end

  create_table "routes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "point_id", null: false
    t.integer "trip_id", null: false
    t.integer "display_order", null: false
    t.text "notes"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at"
  end

  create_table "trips", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "number_order", limit: 10, null: false
    t.date "date_order", null: false
    t.date "date", null: false
    t.integer "institution_id", null: false
    t.integer "students_count", null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "user_password", null: false
    t.integer "center_id", null: false
    t.integer "is_admin", null: false
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
    t.index ["user_password"], name: "index_users_on_user_password", unique: true
  end

end
