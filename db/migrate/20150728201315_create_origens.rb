class CreateOrigens < ActiveRecord::Migration
  def change
    create_table :origens do |t|
      t.string :idOrigen
      t.string :nAeropuerto
      t.string :ciudad
      t.string :codCiudad

      t.timestamps null: false
    end
  end
end
