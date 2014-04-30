json.array!(@menus) do |menu|
  json.extract! menu, :id, :nombre, :descripcion, :precio
  json.url menu_url(menu, format: :json)
end
