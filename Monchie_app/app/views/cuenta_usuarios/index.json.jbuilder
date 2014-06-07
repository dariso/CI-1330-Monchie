json.array!(@cuenta_usuarios) do |cuenta_usuario|
  json.extract! cuenta_usuario, :id, :usuario, :password
  json.url cuenta_usuario_url(cuenta_usuario, format: :json)
end
