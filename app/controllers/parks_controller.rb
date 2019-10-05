class ParksController < ApplicationController

  def index
    @parks = Park.all
    @park  = Park.new
  end

  def create
    @park                = Park.new(park_params)
    @park.chegada        = Time.now
    @park.registrado_por = current_usuario.id 
  
    if @park.save!
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def park_params
    params.require(:park).permit(:chegada, :saida, :pgto, :situacao, :registrado_por, :placa, :marca, :cor, :modelo, :tipo_veiculo)
  end
end
