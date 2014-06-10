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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140609161521) do
=======
ActiveRecord::Schema.define(version: 20140610071516) do
>>>>>>> 0bd3d3aaf45f2b56aa8789a8f2e8ad90c4a72209

  create_table "cuenta_usuarios", force: true do |t|
    t.string   "usuario"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.string   "email"
    t.integer  "emailable_id"
    t.string   "emailable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", force: true do |t|
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ordens_id"
  end

  create_table "ordens", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "usuario_cliente_id"
    t.string   "modoretiro"
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

  create_table "telefonos", force: true do |t|
    t.string   "telefono"
    t.integer  "telefonable_id"
    t.string   "telefonable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuario_clientes", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
