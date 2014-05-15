require 'test_helper'

class ProductosVendidosControllerTest < ActionController::TestCase
  setup do
    @productos_vendido = productos_vendidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos_vendidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productos_vendido" do
    assert_difference('ProductosVendido.count') do
      post :create, productos_vendido: { cantidad: @productos_vendido.cantidad }
    end

    assert_redirected_to productos_vendido_path(assigns(:productos_vendido))
  end

  test "should show productos_vendido" do
    get :show, id: @productos_vendido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productos_vendido
    assert_response :success
  end

  test "should update productos_vendido" do
    patch :update, id: @productos_vendido, productos_vendido: { cantidad: @productos_vendido.cantidad }
    assert_redirected_to productos_vendido_path(assigns(:productos_vendido))
  end

  test "should destroy productos_vendido" do
    assert_difference('ProductosVendido.count', -1) do
      delete :destroy, id: @productos_vendido
    end

    assert_redirected_to productos_vendidos_path
  end
end
