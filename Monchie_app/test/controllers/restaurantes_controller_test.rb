require 'test_helper'

class RestaurantesControllerTest < ActionController::TestCase
  setup do
    @restaurante = restaurantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurante" do
    assert_difference('Restaurante.count') do
      post :create, restaurante: { canton: @restaurante.canton, direccion: @restaurante.direccion, distrito: @restaurante.distrito, nombre: @restaurante.nombre, provincia: @restaurante.provincia, telefono: @restaurante.telefono }
    end

    assert_redirected_to restaurante_path(assigns(:restaurante))
  end

  test "should show restaurante" do
    get :show, id: @restaurante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurante
    assert_response :success
  end

  test "should update restaurante" do
    patch :update, id: @restaurante, restaurante: { canton: @restaurante.canton, direccion: @restaurante.direccion, distrito: @restaurante.distrito, nombre: @restaurante.nombre, provincia: @restaurante.provincia, telefono: @restaurante.telefono }
    assert_redirected_to restaurante_path(assigns(:restaurante))
  end

  test "should destroy restaurante" do
    assert_difference('Restaurante.count', -1) do
      delete :destroy, id: @restaurante
    end

    assert_redirected_to restaurantes_path
  end
end
