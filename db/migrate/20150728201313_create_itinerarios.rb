class CreateItinerarios < ActiveRecord::Migration
  def change
    create_table :itinerarios do |t|
      t.string :idItinerario
      t.date :fechaLlegada
      t.date :fechaSalida
      t.time :horaSalida
      
      t.references :origen, index:true, foreing_key:true
      
      t.references :destino, index:true, foreing_key:true

      t.timestamps null: false
    end
  end
end
