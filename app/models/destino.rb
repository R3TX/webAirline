class Destino < ActiveRecord::Base
  #attr_accessor :nAeropuerto, :ciudad, :codCiudad
  has_many :itinerarios
end
