class CreateSubcategoria < ActiveRecord::Migration
  def change
    create_table :subcategoria do |t|
      t.references :categorium, index: true, foreign_key: true
      t.string :subcategoria

      t.timestamps null: false
    end
  end
end
