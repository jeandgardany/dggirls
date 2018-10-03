class CreateEntregaEstampas < ActiveRecord::Migration[5.2]
  def change
    create_table :entrega_estampas do |t|
      t.date :data
      t.references :estampa, foreign_key: true
      t.integer :qtd_entregue, null: false
      t.decimal :valor
      t.references :costura, foreign_key: true
      t.text :obs
      t.integer :perdas

      t.timestamps
    end
  end
end
