class CreateTraduccions < ActiveRecord::Migration
  def self.up
    create_table :traduccions do |t|
      t.string :nombre_base
      t.string :nombre_horarios
    end
  end

  def self.down
    drop_table :traduccions
  end
end
