require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  test "should get Agenda" do
    get :Agenda
    assert_response :success
  end

end
