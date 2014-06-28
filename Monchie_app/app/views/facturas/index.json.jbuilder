json.array!(@facturas) do |factura|
  json.extract! factura, :id, :integer, :integer
  json.url factura_url(factura, format: :json)
end
