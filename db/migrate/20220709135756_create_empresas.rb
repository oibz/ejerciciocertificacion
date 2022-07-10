class CreateEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :empresas do |t|
      t.string :rut
      t.string :razon_social
      t.string :representante_legal
      t.string :direccion
      t.integer :telefono

      t.timestamps
    end
  end
end
