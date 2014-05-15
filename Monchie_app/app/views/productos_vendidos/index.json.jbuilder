json.array!(@productos_vendidos) do |productos_vendido|
  json.extract! productos_vendido, :id, :cantidad
  json.url productos_vendido_url(productos_vendido, format: :json)
end
