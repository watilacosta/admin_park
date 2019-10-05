class ApplicationController < ActionController::Base
  before_action :authenticate_usuario!

  layout :get_layout

  private

  def get_layout
    usuario_signed_in? ? 'application' : 'devise'
  end
end
