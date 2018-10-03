class CreatePagParcelas < ActiveRecord::Migration[5.2]
  def change
    create_table :pag_parcelas do |t|
      t.date :data, null: false
      t.decimal :valorp, null: false
      t.boolean :pago, default: false

      t.timestamps
    end
  end
end
