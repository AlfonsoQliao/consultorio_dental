require 'test_helper'

class AssistantControllerTest < ActionController::TestCase
  test "should get Asistentes" do
    get :Asistentes
    assert_response :success
  end

  test "should get EditarAsistente" do
    get :EditarAsistente
    assert_response :success
  end

end
