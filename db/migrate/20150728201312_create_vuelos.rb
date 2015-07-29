class CreateVuelos < ActiveRecord::Migration
  def change
    create_table :vuelos do |t|
      t.string :idVuelo
      t.int :asientosDisponibles
      t.string :obsevaciones
      t.string :modeloAvion
      
      t.references :itinerario, index:true, foreing_key:true
      
      t.references :avion, index:true, foreing_key:true
      t.timestamps null: false
    end
  end
end
