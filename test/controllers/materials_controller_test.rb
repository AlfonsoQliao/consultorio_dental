require 'test_helper'

class MaterialsControllerTest < ActionController::TestCase
  test "should get Materiales" do
    get :Materiales
    assert_response :success
  end

end
