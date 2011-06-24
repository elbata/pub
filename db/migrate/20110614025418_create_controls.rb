class CreateControls < ActiveRecord::Migration
  def self.up
    create_table :controls do |t|
      t.string :cod_ubic_c
      t.string :cod_variante
      t.integer :ordinal
      t.string :descr_ubic
      t.string :cod_calle_1
      t.string :cod_calle_2
      t.decimal :lat, :precision => 20, :scale => 15
      t.decimal :lng, :precision => 20, :scale => 15
    end
  end

  def self.down
    drop_table :controls
  end
end
