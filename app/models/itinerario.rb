include ActiveModel::Serializers::JSON
class Itinerario < ActiveRecord::Base
 # attr_accessor :fechaLlegada, :horaLlegada, :fechaSalida, :horaSalida
    has_many :vuelos
  belongs_to :destino
  belongs_to :origen
end
