class MapaController < ApplicationController

  RADIO = 100

  def index
		@pos_previa = [-34.8580556,-56.1708333]
  end

	def paradas_cercanas
    @paradas = Parada.paradas_cercanas params[:lat],params[:lng]
    puts @paradas.inspect
    puts @paradas.to_json.inspect
    render :text => @paradas.to_json
  end

  def variantes_parada
    @variantes = Parada.variantes params[:cod_ubic_p]
    puts @variantes.inspect
    render :text => @variantes.to_json
  end

end
