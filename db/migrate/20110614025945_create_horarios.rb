class CreateHorarios < ActiveRecord::Migration
  def self.up
    create_table :horarios do |t|
      t.string :cod_linea
      t.string :cod_tipo_dia
      t.string :origen
      t.time :hora_salida
      t.string :destino
      t.time :hora_llegada
      t.string :punto
      t.time :hora
      t.integer :ordinal
      t.string :sentido
    end
  end

  def self.down
    drop_table :horarios
  end
end
