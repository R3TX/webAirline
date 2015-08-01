class ItinerariosController < ApplicationController
def index
  if params[:origen]
    category=  Origen.find(params[:origen])
    puts category.ciudad
    puts category.id
  end
end
  def show
  
    @ejemplo1 = Itinerario.all
    render json: @ejemplo1
  end



end
