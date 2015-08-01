class Vuelo < ActiveRecord::Base
  attr_accessor :asientosDisponibles, :modeloAvion
    belongs_to :avion
  belongs_to :itinerario
  has_many :pasajes
end
