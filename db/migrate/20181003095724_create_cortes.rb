class CreateCortes < ActiveRecord::Migration[5.2]
  def change
    create_table :cortes do |t|
      t.date :data, null: false
      t.references :compra, foreign_key: true
      t.integer :qtd_total, null: false
      t.decimal :valor, null: false

      t.timestamps
    end
  end
end
