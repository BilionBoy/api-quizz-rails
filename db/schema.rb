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

ActiveRecord::Schema[7.2].define(version: 2025_08_13_163923) do
  create_table "a_categorias", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "a_eventos", force: :cascade do |t|
    t.integer "a_grupo_id", null: false
    t.integer "quantidade_dias"
    t.integer "quantidade_pessoas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_grupo_id"], name: "index_a_eventos_on_a_grupo_id"
  end

  create_table "a_grupos", force: :cascade do |t|
    t.string "descricao"
    t.integer "a_segmento_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_segmento_id"], name: "index_a_grupos_on_a_segmento_id"
  end

  create_table "a_segmentos", force: :cascade do |t|
    t.string "descricao"
    t.integer "a_categoria_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_categoria_id"], name: "index_a_segmentos_on_a_categoria_id"
  end

  add_foreign_key "a_eventos", "a_grupos", column: "a_grupo_id"
  add_foreign_key "a_grupos", "a_segmentos"
  add_foreign_key "a_segmentos", "a_categorias"
end
