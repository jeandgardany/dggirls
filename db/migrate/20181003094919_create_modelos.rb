class CreateModelos < ActiveRecord::Migration[5.2]
  def change
    create_table :modelos do |t|
      t.string :codigo, null: false
      t.string :nome, null: false
      t.string :genero, null: false, default: 'Feminino'

      t.timestamps
    end
  end
end
