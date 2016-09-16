require 'test_helper'

class RegistroAccionesControllerTest < ActionController::TestCase
  setup do
    @registro_accione = registro_acciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_acciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_accione" do
    assert_difference('RegistroAccione.count') do
      post :create, registro_accione: { accion: @registro_accione.accion, detalle: @registro_accione.detalle, fecha: @registro_accione.fecha, user_id: @registro_accione.user_id }
    end

    assert_redirected_to registro_accione_path(assigns(:registro_accione))
  end

  test "should show registro_accione" do
    get :show, id: @registro_accione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_accione
    assert_response :success
  end

  test "should update registro_accione" do
    patch :update, id: @registro_accione, registro_accione: { accion: @registro_accione.accion, detalle: @registro_accione.detalle, fecha: @registro_accione.fecha, user_id: @registro_accione.user_id }
    assert_redirected_to registro_accione_path(assigns(:registro_accione))
  end

  test "should destroy registro_accione" do
    assert_difference('RegistroAccione.count', -1) do
      delete :destroy, id: @registro_accione
    end

    assert_redirected_to registro_acciones_path
  end
end
