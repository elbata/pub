class CreateParadas < ActiveRecord::Migration
  def self.up
    create_table :paradas do |t|
      t.string :cod_ubic_p
      t.string :cod_variante
      t.integer :ordinal
      t.string :calle
      t.string :esquina
      t.string :cod_calle_1
      t.string :cod_calle_2
      t.decimal :lat, :precision => 20, :scale => 15
      t.decimal :lng, :precision => 20, :scale => 15
    end
  end

  def self.down
    drop_table :paradas
  end
end
