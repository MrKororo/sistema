class CreateLiquidacions < ActiveRecord::Migration
  def change
    create_table :liquidacions do |t|
      t.date :fecha_emision
      t.references :asignacion, index: true, foreign_key: true
      t.references :habere, index: true, foreign_key: true
      t.references :descuento_adicional, index: true, foreign_key: true
      t.references :bonificacion, index: true, foreign_key: true
      t.references :descuento, index: true, foreign_key: true
      t.references :personal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
