class Pasaje < ActiveRecord::Base
  attr_accessor :clase, :valor, :fecha, :estado, :descripcion, :ubicacion
    has_many :mediopagos
  belongs_to :vuelo
  belongs_to :user
end
