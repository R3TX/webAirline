class VuelosController < ApplicationController
  
def show
  fechaSalida = params[:datetime_ida]
  puts fechaSalida
  puts params[:datetime_ida]
  fechaLlegada = params[:datetime_llegada]
  origen= params[:origen]
    destino =  params[:destino]
  @ciudadOrigen = Origen.find(origen)
  @ciudadDestino = Destino.find(destino)

  @itinerariosSalida = Itinerario.where(:fechaSalida => fechaSalida, :origen_id => origen, :destino_id => destino)
  puts @itinerariosSalida
  if !@itinerariosSalida.blank?
      puts "supere el primer if"
    if params[:tipo]=="IR"
      puts "supere el segundo if"
     @itinerariosVolver = Itinerario.where(:fechaSalida => fechaLlegada, :origen_id => destino, :destino_id => origen)
     noFunciono !@itinerariosVolver.blank?
    end
    noFunciono @itinerariosSalida.blank?
    

  # redirect_to afterSearch_url
  else
    noFunciono true
  end
end
def comprar
  @itinerarioEscogido = Itinerario.find(params[:itinerarioIda])
  puts params[:itinerarioVuelta]
end

private
 
 def noFunciono var
   if(var == true)
    puts "no supere el primer if"
    message  = "There is no flights with that parameters "
    message += "Please Change it"
    flash[:warning] = message
    redirect_to root_url
   end
 end





end
