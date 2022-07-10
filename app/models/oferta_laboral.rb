class OfertaLaboral < ApplicationRecord
  belongs_to :empresa, required: false
  belongs_to :regione, required: false
end
