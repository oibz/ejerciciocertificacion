class AddRegionToOferta < ActiveRecord::Migration[6.1]
  def change
    add_reference :oferta_laborals, :regiones, null: false, foreign_key: true
    add_reference :oferta_laborals, :tipo_oferta, null: false, foreign_key: true
  end
end
