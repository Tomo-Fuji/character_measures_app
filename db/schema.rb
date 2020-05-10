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

ActiveRecord::Schema.define(version: 2020_05_09_045531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "measures", force: :cascade do |t|
    t.integer "user_id"
    t.text "mario"
    t.text "donkeykong"
    t.text "link"
    t.text "samus"
    t.text "darksamus"
    t.text "yoshi"
    t.text "kirby"
    t.text "fox"
    t.text "pikachu"
    t.text "luigi"
    t.text "ness"
    t.text "captainfalcon"
    t.text "purin"
    t.text "peach"
    t.text "daisy"
    t.text "koopa"
    t.text "iceclimber"
    t.text "sheik"
    t.text "zelda"
    t.text "drmario"
    t.text "pichu"
    t.text "falco"
    t.text "marth"
    t.text "lucina"
    t.text "younglink"
    t.text "ganondorf"
    t.text "mewtwo"
    t.text "roy"
    t.text "chrom"
    t.text "mrgame"
    t.text "metaknight"
    t.text "pit"
    t.text "zerosuitsamus"
    t.text "wario"
    t.text "snake"
    t.text "ike"
    t.text "pokemontrainer"
    t.text "diddykong"
    t.text "lucas"
    t.text "sonic"
    t.text "dedede"
    t.text "pikmin"
    t.text "lucario"
    t.text "robot"
    t.text "toonlink"
    t.text "wolf"
    t.text "murabito"
    t.text "rockman"
    t.text "wiifittrainer"
    t.text "rosetta"
    t.text "littlemac"
    t.text "gekkouga"
    t.text "kakutou"
    t.text "kenjutu"
    t.text "shageki"
    t.text "palutena"
    t.text "pacman"
    t.text "reflet"
    t.text "shulk"
    t.text "koopajr"
    t.text "duckhunt"
    t.text "ryu"
    t.text "ken"
    t.text "cloud"
    t.text "kamui"
    t.text "bayonetta"
    t.text "inkling"
    t.text "ridley"
    t.text "simon"
    t.text "richter"
    t.text "kingkrool"
    t.text "shizue"
    t.text "gaogaen"
    t.text "packunflower"
    t.text "joker"
    t.text "hero"
    t.text "banjo"
    t.text "terry"
    t.text "byleth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "image_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
