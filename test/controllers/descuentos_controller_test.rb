require 'test_helper'

class DescuentosControllerTest < ActionController::TestCase
  setup do
    @descuento = descuentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descuentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create descuento" do
    assert_difference('Descuento.count') do
      post :create, descuento: { cotizacion_voluntaria: @descuento.cotizacion_voluntaria, descuento_afp: @descuento.descuento_afp, descuento_salud: @descuento.descuento_salud, impuesto: @descuento.impuesto, sindicato: @descuento.sindicato }
    end

    assert_redirected_to descuento_path(assigns(:descuento))
  end

  test "should show descuento" do
    get :show, id: @descuento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @descuento
    assert_response :success
  end

  test "should update descuento" do
    patch :update, id: @descuento, descuento: { cotizacion_voluntaria: @descuento.cotizacion_voluntaria, descuento_afp: @descuento.descuento_afp, descuento_salud: @descuento.descuento_salud, impuesto: @descuento.impuesto, sindicato: @descuento.sindicato }
    assert_redirected_to descuento_path(assigns(:descuento))
  end

  test "should destroy descuento" do
    assert_difference('Descuento.count', -1) do
      delete :destroy, id: @descuento
    end

    assert_redirected_to descuentos_path
  end
end
