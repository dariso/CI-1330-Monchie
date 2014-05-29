json.array!(@ordens) do |orden|
  json.extract! orden, :id, :fecha
  json.url orden_url(orden, format: :json)
end
