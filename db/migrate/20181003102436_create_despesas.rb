class CreateDespesas < ActiveRecord::Migration[5.2]
  def change
    create_table :despesas do |t|
      t.date :data
      t.string :nome, null: false
      t.decimal :valor, null: false
      t.text :obs

      t.timestamps
    end
  end
end
