class CreateCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :compras do |t|
      t.date :data, null: false
      t.references :fornecedor, foreign_key: true
      t.string :produto, null: false
      t.decimal :valor, null: false
      t.string :pagamento, null: false, default: 'avista'

      t.timestamps
    end
  end
end
