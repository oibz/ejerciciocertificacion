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

ActiveRecord::Schema.define(version: 2022_07_10_050332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: :cascade do |t|
    t.string "rut"
    t.string "razon_social"
    t.string "representante_legal"
    t.string "direccion"
    t.integer "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_empresas_id", null: false
    t.index ["user_empresas_id"], name: "index_empresas_on_user_empresas_id"
  end

  create_table "oferta_laborals", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cargo"
    t.text "descripcion"
    t.text "vacantes"
    t.integer "oferta_laborals"
    t.integer "rango_minimo"
    t.integer "rango_maximo"
    t.datetime "fecha_inicio"
    t.bigint "regiones_id", null: false
    t.bigint "tipo_oferta_id", null: false
    t.bigint "empresas_id", null: false
    t.index ["empresas_id"], name: "index_oferta_laborals_on_empresas_id"
    t.index ["regiones_id"], name: "index_oferta_laborals_on_regiones_id"
    t.index ["tipo_oferta_id"], name: "index_oferta_laborals_on_tipo_oferta_id"
  end

  create_table "regiones", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipo_oferta", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_empresas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_user_empresas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_empresas_on_reset_password_token", unique: true
  end

  create_table "user_personas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_user_personas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_personas_on_reset_password_token", unique: true
  end

  add_foreign_key "empresas", "user_empresas", column: "user_empresas_id"
  add_foreign_key "oferta_laborals", "empresas", column: "empresas_id"
  add_foreign_key "oferta_laborals", "regiones", column: "regiones_id"
  add_foreign_key "oferta_laborals", "tipo_oferta", column: "tipo_oferta_id"
end
