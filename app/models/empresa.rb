class Empresa < ApplicationRecord
  belongs_to :user_empresas, required: false
  has_many :oferta_laboral
  accepts_nested_attributes_for :oferta_laboral
end
