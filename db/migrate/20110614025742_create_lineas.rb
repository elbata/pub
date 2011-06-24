class CreateLineas < ActiveRecord::Migration
  def self.up
    create_table :lineas do |t|
      t.string :cod_linea
      t.string :descr_linea
      t.string :ordinal_sublinea
      t.string :cod_sublinea
      t.string :descr_sublinea
      t.string :cod_variante
      t.string :descr_variante
    end
  end

  def self.down
    drop_table :lineas
  end
end
