class CreateFormaPagamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :forma_pagamentos do |t|
      t.string :tipo
      t.boolean :ativo

      t.timestamps
    end
  end
end
