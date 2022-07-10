class AddUserEmpresaToEmpresa < ActiveRecord::Migration[6.1]
  def change
    add_reference :empresas, :user_empresas, null: false, foreign_key: true
  end
end
