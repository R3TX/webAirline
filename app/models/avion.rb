class Avion < ActiveRecord::Base
  attr_accessor :modeloAvion, :capacidad, :idAvion
    has_many :vuelos
end
