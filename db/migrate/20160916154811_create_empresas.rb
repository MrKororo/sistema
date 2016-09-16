class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :giro_empresa
      t.string :domicilio
      t.string :email
      t.string :contacto
      t.string :website
      t.integer :rut_empresa
      t.integer :telefono

      t.timestamps null: false
    end
  end
end
