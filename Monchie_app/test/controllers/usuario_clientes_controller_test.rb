require 'test_helper'

class UsuarioClientesControllerTest < ActionController::TestCase
  setup do
    @usuario_cliente = usuario_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_cliente" do
    assert_difference('UsuarioCliente.count') do
      post :create, usuario_cliente: { apellidos: @usuario_cliente.apellidos, direccion: @usuario_cliente.direccion, nombre: @usuario_cliente.nombre, telefono: @usuario_cliente.telefono }
    end

    assert_redirected_to usuario_cliente_path(assigns(:usuario_cliente))
  end

  test "should show usuario_cliente" do
    get :show, id: @usuario_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_cliente
    assert_response :success
  end

  test "should update usuario_cliente" do
    patch :update, id: @usuario_cliente, usuario_cliente: { apellidos: @usuario_cliente.apellidos, direccion: @usuario_cliente.direccion, nombre: @usuario_cliente.nombre, telefono: @usuario_cliente.telefono }
    assert_redirected_to usuario_cliente_path(assigns(:usuario_cliente))
  end

  test "should destroy usuario_cliente" do
    assert_difference('UsuarioCliente.count', -1) do
      delete :destroy, id: @usuario_cliente
    end

    assert_redirected_to usuario_clientes_path
  end
end
