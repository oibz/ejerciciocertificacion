class BolsaEmpleoController < ApplicationController
  before_action :check_signed_in

  def check_signed_in
  redirect_to empresas_path if user_empresa_signed_in?
  end

  def index
  end
end
