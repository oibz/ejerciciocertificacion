class CreateOfertaLaborals < ActiveRecord::Migration[6.1]
  def change
    create_table :oferta_laborals do |t|
      t.timestamps
      t.string :cargo
      t.text :descripcion
      t.text :vacantes
      t.integer :oferta_laborals
      t.integer :rango_minimo
      t.integer :rango_maximo
      t.datetime :fecha_inicio
    end
  end
end
