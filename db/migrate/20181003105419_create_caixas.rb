class CreateCaixas < ActiveRecord::Migration[5.2]
  def change
    create_table :caixas do |t|
      t.date :data
      t.references :compra, foreign_key: true
      t.references :despesa, foreign_key: true
      t.references :venda, foreign_key: true
      t.references :costura, foreign_key: true
      t.references :corte, foreign_key: true
      t.decimal :total_entradas
      t.decimal :total_saidas
      t.decimal :saldo
      t.decimal :extras
      t.text :obs
      t.decimal :total_perdas
      t.references :estampa, foreign_key: true

      t.timestamps
    end
  end
end
