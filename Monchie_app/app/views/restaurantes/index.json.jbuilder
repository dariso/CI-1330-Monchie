json.array!(@restaurantes) do |restaurante|
  json.extract! restaurante, :id, :nombre, :telefono, :provincia, :canton, :distrito, :direccion
  json.url restaurante_url(restaurante, format: :json)
end
