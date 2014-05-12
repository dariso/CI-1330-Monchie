json.array!(@restaurantes) do |restaurante|
  json.extract! restaurante, :id, :nombre, :direccion
  json.url restaurante_url(restaurante, format: :json)
end
