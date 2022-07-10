json.extract! oferta_laboral, :id, :cargo, :descripcion, :vacantes, :rango_minimo, :rango_maximo, :fecha_inicio, :created_at, :updated_at
json.url oferta_laboral_url(oferta_laboral, format: :json)
