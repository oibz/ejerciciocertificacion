class AddEmpresaToOferta < ActiveRecord::Migration[6.1]
  def change
    add_reference :oferta_laborals, :empresas, null: false, foreign_key: true
  end
end
