class ParksController < ApplicationController
  def index
    @parks = Park.all
    @park  = Park.new(chegada: Time.now, 
                     registrado_por: current_usuario.id)
  end
end
