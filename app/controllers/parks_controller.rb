class ParksController < ApplicationController
  def index
    @parks = Park.all
    @park  = Park.new(chegada: Time.now, 
                     registrado_por: current_usuario.id)
  end

  def create
    
    binding.pry
    
    @park = Park.new(park_params)

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
