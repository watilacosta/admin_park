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

require 'test_helper'

class ParkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
