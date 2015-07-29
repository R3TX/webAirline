class CreateDestinos < ActiveRecord::Migration
  def change
    create_table :destinos do |t|
      t.string :idDestino
      t.string :nAeropuerto
      t.string :ciudad
      t.string :codCiudad

      t.timestamps null: false
    end
  end
end
