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

ActiveRecord::Schema.define(version: 20150728205756) do

  create_table "avions", force: :cascade do |t|
    t.string   "idAvion"
    t.string   "modeloAvion"
    t.integer  "capacidad"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "destinos", force: :cascade do |t|
    t.string   "idDestino"
    t.string   "nAeropuerto"
    t.string   "ciudad"
    t.string   "codCiudad"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "itinerarios", force: :cascade do |t|
    t.string   "idItinerario"
    t.date     "fechaLlegada"
    t.date     "fechaSalida"
    t.time     "horaSalida"
    t.time     "horaLlegada"
    t.integer  "origen_id"
    t.integer  "destino_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "itinerarios", ["destino_id"], name: "index_itinerarios_on_destino_id"
  add_index "itinerarios", ["origen_id"], name: "index_itinerarios_on_origen_id"

  create_table "medio_pagos", force: :cascade do |t|
    t.string   "MedioPago"
    t.string   "descripcion"
    t.float    "monto"
    t.integer  "pasaje_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "medio_pagos", ["pasaje_id"], name: "index_medio_pagos_on_pasaje_id"

  create_table "origens", force: :cascade do |t|
    t.string   "idOrigen"
    t.string   "nAeropuerto"
    t.string   "ciudad"
    t.string   "codCiudad"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pasajes", force: :cascade do |t|
    t.string   "clase"
    t.float    "valor"
    t.datetime "fecha"
    t.boolean  "estado"
    t.string   "descripcion"
    t.string   "ubicacion"
    t.integer  "vuelo_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pasajes", ["user_id"], name: "index_pasajes_on_user_id"
  add_index "pasajes", ["vuelo_id"], name: "index_pasajes_on_vuelo_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.integer  "cedula"
    t.integer  "edad"
    t.string   "telefono"
    t.string   "genero"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "vuelos", force: :cascade do |t|
    t.string   "idVuelo"
    t.integer  "asientosDisponibles"
    t.string   "obsevaciones"
    t.string   "modeloAvion"
    t.integer  "millas"
    t.integer  "itinerario_id"
    t.integer  "avion_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "vuelos", ["avion_id"], name: "index_vuelos_on_avion_id"
  add_index "vuelos", ["itinerario_id"], name: "index_vuelos_on_itinerario_id"

end
