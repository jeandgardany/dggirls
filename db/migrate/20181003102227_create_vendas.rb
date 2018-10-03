class CreateVendas < ActiveRecord::Migration[5.2]
  def change
    create_table :vendas do |t|
      t.date :data
      t.decimal :valor_venda, null: false
      t.decimal :dinheiro
      t.decimal :cartao
      t.decimal :nota

      t.timestamps
    end
  end
end
