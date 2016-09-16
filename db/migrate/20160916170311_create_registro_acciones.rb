class CreateRegistroAcciones < ActiveRecord::Migration
  def change
    create_table :registro_acciones do |t|
      t.references :user, index: true, foreign_key: true
      t.string :accion
      t.string :detalle
      t.date :fecha

      t.timestamps null: false
    end
  end
end
