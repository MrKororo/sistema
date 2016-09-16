class CreateCentrocostos < ActiveRecord::Migration
  def change
    create_table :centrocostos do |t|
      t.string :nombre_centro
      t.string :codigo_centro
      t.string :detalle_centro

      t.timestamps null: false
    end
  end
end
