class CreateDescuentoAdicionals < ActiveRecord::Migration
  def change
    create_table :descuento_adicionals do |t|
      t.string :detalle_descuento
      t.integer :descuento_adicional

      t.timestamps null: false
    end
  end
end
