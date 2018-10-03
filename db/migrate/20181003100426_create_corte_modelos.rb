class CreateCorteModelos < ActiveRecord::Migration[5.2]
  def change
    create_table :corte_modelos do |t|
      t.integer :qtd, null: false
      t.references :modelo, foreign_key: true
      t.references :corte, foreign_key: true
      t.decimal :valor_custo

      t.timestamps
    end
  end
end
