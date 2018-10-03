class CreateCosturas < ActiveRecord::Migration[5.2]
  def change
    create_table :costuras do |t|
      t.date :data
      t.string :faccao, null: false
      t.references :corte, foreign_key: true
      t.integer :qtd_total, null: false

      t.timestamps
    end
  end
end
