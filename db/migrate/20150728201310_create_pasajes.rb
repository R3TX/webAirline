class CreatePasajes < ActiveRecord::Migration
  def change
    create_table :pasajes do |t|
      t.string :clase
      t.float :valor
      t.datetime :fecha
      t.boolean :estado
      t.string :descripcion
      t.string :ubicacion
      t.references :vuelo, index:true, foreing_key:true
      t.references :user, index:true, foreing_key:true
      t.timestamps null: false
    end
    
    
  end
end
