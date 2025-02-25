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

ActiveRecord::Schema[8.0].define(version: 2025_02_25_014330) do
  create_table "inscricaos", force: :cascade do |t|
    t.string "participante"
    t.integer "torneio_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["torneio_id"], name: "index_inscricaos_on_torneio_id"
  end

  create_table "permissaos", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.string "papel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_permissaos_on_usuario_id"
  end

  create_table "torneios", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.date "data_inicio"
    t.date "data_fim"
    t.string "organizador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "inscricaos", "torneios"
  add_foreign_key "permissaos", "usuarios"
end
