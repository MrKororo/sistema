class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :nombre_personal
      t.string :apellidop_personal
      t.string :apellidom_personal
      t.integer :rut_personal
      t.string :afp_personal
      t.string :sistema_salud
      t.boolean :personal_activo
      t.date :fecha_contratacion
      t.string :tipo_contrato
      t.string :tipo_pago
      t.integer :num_cuenta
      t.references :categorium, index: true, foreign_key: true
      t.references :centrocosto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
