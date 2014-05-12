json.array!(@ordens) do |orden|
  json.extract! orden, :id, :menu_id, :usuario_id
  json.url orden_url(orden, format: :json)
end
