# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140630142258) do

  create_table "emails", force: true do |t|
    t.string   "email"
    t.integer  "emailable_id"
    t.string   "emailable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facturas", force: true do |t|
    t.integer  "total"
    t.integer  "orden_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordens", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "modoretiro"
    t.string   "estado"
    t.integer  "user_id"
  end

  create_table "productos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurante_id"
  end

  create_table "productos_vendidos", force: true do |t|
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "especificaciones"
    t.integer  "producto_id"
    t.integer  "orden_id"
  end

  create_table "restaurantes", force: true do |t|
    t.string   "nombre"
    t.string   "provincia"
    t.string   "canton"
    t.string   "distrito"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telefonos", force: true do |t|
    t.string   "telefono"
    t.integer  "telefonable_id"
    t.string   "telefonable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.integer  "role_id"
    t.string   "role"
    t.integer  "roles_mask"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "usuario_clientes", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provincia"
    t.string   "canton"
    t.string   "distrito"
    t.integer  "user_id"
  end

end
