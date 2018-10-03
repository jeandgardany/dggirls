class CreateEntregas < ActiveRecord::Migration[5.2]
  def change
    create_table :entregas do |t|
      t.date :data
      t.integer :qtd_entrega, null: false
      t.references :costura, foreign_key: true
      t.decimal :valor_pago, null: false
      t.integer :restante
      t.boolean :finalizado, default: false
      t.decimal :perdas
      t.text :obs

      t.timestamps
    end
  end
end
