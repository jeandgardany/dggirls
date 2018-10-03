class CreateEstampas < ActiveRecord::Migration[5.2]
  def change
    create_table :estampas do |t|
      t.date :data
      t.references :corte, foreign_key: true
      t.integer :qtd_total, null: false
      t.decimal :valor_total
      t.string :estampa_tipo
      t.boolean :finalizado, default: false

      t.timestamps
    end
  end
end
