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

ActiveRecord::Schema.define(version: 2018_10_04_010051) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "caixas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data"
    t.bigint "compra_id"
    t.bigint "despesa_id"
    t.bigint "venda_id"
    t.bigint "costura_id"
    t.bigint "corte_id"
    t.decimal "total_entradas", precision: 10
    t.decimal "total_saidas", precision: 10
    t.decimal "saldo", precision: 10
    t.decimal "extras", precision: 10
    t.text "obs"
    t.decimal "total_perdas", precision: 10
    t.bigint "estampa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_caixas_on_compra_id"
    t.index ["corte_id"], name: "index_caixas_on_corte_id"
    t.index ["costura_id"], name: "index_caixas_on_costura_id"
    t.index ["despesa_id"], name: "index_caixas_on_despesa_id"
    t.index ["estampa_id"], name: "index_caixas_on_estampa_id"
    t.index ["venda_id"], name: "index_caixas_on_venda_id"
  end

  create_table "compras", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data", null: false
    t.bigint "fornecedor_id"
    t.string "produto", null: false
    t.decimal "valor", precision: 10, null: false
    t.string "pagamento", default: "avista", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fornecedor_id"], name: "index_compras_on_fornecedor_id"
  end

  create_table "corte_modelos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "qtd", null: false
    t.bigint "modelo_id"
    t.bigint "corte_id"
    t.decimal "valor_custo", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["corte_id"], name: "index_corte_modelos_on_corte_id"
    t.index ["modelo_id"], name: "index_corte_modelos_on_modelo_id"
  end

  create_table "cortes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data", null: false
    t.bigint "compra_id"
    t.integer "qtd_total", null: false
    t.decimal "valor", precision: 10, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_cortes_on_compra_id"
  end

  create_table "costuras", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data"
    t.string "faccao", null: false
    t.bigint "corte_id"
    t.integer "qtd_total", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["corte_id"], name: "index_costuras_on_corte_id"
  end

  create_table "debitos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "compra_id"
    t.integer "qtd_parcelas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_debitos_on_compra_id"
  end

  create_table "despesas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data"
    t.string "nome", null: false
    t.decimal "valor", precision: 10, null: false
    t.text "obs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entrega_estampas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data"
    t.bigint "estampa_id"
    t.integer "qtd_entregue", null: false
    t.decimal "valor", precision: 10
    t.bigint "costura_id"
    t.text "obs"
    t.integer "perdas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["costura_id"], name: "index_entrega_estampas_on_costura_id"
    t.index ["estampa_id"], name: "index_entrega_estampas_on_estampa_id"
  end

  create_table "entregas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data"
    t.integer "qtd_entrega", null: false
    t.bigint "costura_id"
    t.decimal "valor_pago", precision: 10, null: false
    t.integer "restante"
    t.boolean "finalizado", default: false
    t.decimal "perdas", precision: 10
    t.text "obs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["costura_id"], name: "index_entregas_on_costura_id"
  end

  create_table "estampas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data"
    t.bigint "corte_id"
    t.integer "qtd_total", null: false
    t.decimal "valor_total", precision: 10
    t.string "estampa_tipo"
    t.boolean "finalizado", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["corte_id"], name: "index_estampas_on_corte_id"
  end

  create_table "forma_pagamentos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tipo"
    t.boolean "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome", null: false
    t.string "endereco"
    t.string "vendedor"
    t.string "fone"
    t.boolean "ativo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modelos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "codigo", null: false
    t.string "nome", null: false
    t.string "genero", default: "Feminino", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pag_parcelas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data", null: false
    t.decimal "valorp", precision: 10, null: false
    t.boolean "pago", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "data"
    t.decimal "valor_venda", precision: 10, null: false
    t.decimal "dinheiro", precision: 10
    t.decimal "cartao", precision: 10
    t.decimal "nota", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "caixas", "compras"
  add_foreign_key "caixas", "cortes"
  add_foreign_key "caixas", "costuras"
  add_foreign_key "caixas", "despesas"
  add_foreign_key "caixas", "estampas"
  add_foreign_key "caixas", "vendas"
  add_foreign_key "compras", "fornecedors"
  add_foreign_key "corte_modelos", "cortes"
  add_foreign_key "corte_modelos", "modelos"
  add_foreign_key "cortes", "compras"
  add_foreign_key "costuras", "cortes"
  add_foreign_key "debitos", "compras"
  add_foreign_key "entrega_estampas", "costuras"
  add_foreign_key "entrega_estampas", "estampas"
  add_foreign_key "entregas", "costuras"
  add_foreign_key "estampas", "cortes"
end
