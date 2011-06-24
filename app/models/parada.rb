class Parada < ActiveRecord::Base

  acts_as_mappable :default_units => :kms,
                   :default_formula => :sphere,
                   :distance_field_name => :distance,
                   :lat_column_name => :lat,
                   :lng_column_name => :lng

  def self.paradas_cercanas lat, lng
    Parada.select("distinct cod_ubic_p, lat, lng").within(0.3,:origin =>[lat,lng])
  end

  def self.variantes cod_ubic_p
    Parada.find(:all,
                :select => "distinct paradas.cod_variante, lineas.descr_linea, lineas.descr_sublinea",
                :joins => "left outer join lineas on paradas.cod_variante = lineas.cod_variante",
                :conditions => ["paradas.cod_ubic_p = ?",cod_ubic_p])
  end

end
