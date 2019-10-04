class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.datetime :chegada
      t.datetime :saida
      t.boolean :pgto
      t.integer :situacao
      t.integer :registrado_por
      t.string :placa
      t.string :marca
      t.string :cor
      t.string :modelo
      t.integer :tipo_veiculo

      t.timestamps
    end
  end
end
