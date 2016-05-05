require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  test "should get Proveedores" do
    get :Proveedores
    assert_response :success
  end

  test "should get DatosProveedores" do
    get :DatosProveedores
    assert_response :success
  end

end
