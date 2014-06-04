json.array!(@estados) do |estado|
  json.extract! estado, :id, :estado
  json.url estado_url(estado, format: :json)
end
