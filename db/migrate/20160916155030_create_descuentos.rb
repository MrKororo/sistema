class CreateDescuentos < ActiveRecord::Migration
  def change
    create_table :descuentos do |t|
      t.integer :descuento_afp
      t.integer :descuento_salud
      t.integer :sindicato
      t.integer :impuesto
      t.integer :cotizacion_voluntaria

      t.timestamps null: false
    end
  end
end
