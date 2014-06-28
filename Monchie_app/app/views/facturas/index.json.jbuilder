json.array!(@facturas) do |factura|
  json.extract! factura, :id, :total
  json.url factura_url(factura, format: :json)
end
