class CreateFornecedors < ActiveRecord::Migration[5.2]
  def change
    create_table :fornecedors do |t|
      t.string :nome, null: false
      t.string :endereco
      t.string :vendedor
      t.string :fone
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
