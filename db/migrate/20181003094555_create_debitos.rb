class CreateDebitos < ActiveRecord::Migration[5.2]
  def change
    create_table :debitos do |t|
      t.references :compra, foreign_key: true
      t.integer :qtd_parcelas

      t.timestamps
    end
  end
end
