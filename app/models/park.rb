# == Schema Information
#
# Table name: parks
#
#  id             :integer          not null, primary key
#  chegada        :datetime
#  saida          :datetime
#  pgto           :boolean
#  situacao       :integer
#  registrado_por :integer
#  placa          :string
#  marca          :string
#  cor            :string
#  modelo         :string
#  tipo_veiculo   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Park < ApplicationRecord
  validates :chegada, :placa, :cor, :tipo_veiculo, presence: true

  enum situacao:     [:aberto, :fechado, :cancelado]
  enum tipo_veiculo: [:carro, :moto, :caminhonete, :outro]
end
