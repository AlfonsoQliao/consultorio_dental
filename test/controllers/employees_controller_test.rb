require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  test "should get Personal" do
    get :Personal
    assert_response :success
  end

  test "should get DatosPersonal" do
    get :DatosPersonal
    assert_response :success
  end

end
