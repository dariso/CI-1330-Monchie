json.array!(@usuario_clientes) do |usuario_cliente|
  json.extract! usuario_cliente, :id, :nombre, :apellidos, :telefono, :direccion
  json.url usuario_cliente_url(usuario_cliente, format: :json)
end
