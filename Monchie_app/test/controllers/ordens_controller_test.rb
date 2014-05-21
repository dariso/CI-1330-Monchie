require 'test_helper'

class OrdensControllerTest < ActionController::TestCase
  setup do
    @orden = ordens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orden" do
    assert_difference('Orden.count') do
      post :create, orden: { fecha: @orden.fecha }
    end

    assert_redirected_to orden_path(assigns(:orden))
  end

  test "should show orden" do
    get :show, id: @orden
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orden
    assert_response :success
  end

  test "should update orden" do
    patch :update, id: @orden, orden: { fecha: @orden.fecha }
    assert_redirected_to orden_path(assigns(:orden))
  end

  test "should destroy orden" do
    assert_difference('Orden.count', -1) do
      delete :destroy, id: @orden
    end

    assert_redirected_to ordens_path
  end
end
