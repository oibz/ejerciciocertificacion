class CreateTipoOferta < ActiveRecord::Migration[6.1]
  def change
    create_table :tipo_oferta do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
