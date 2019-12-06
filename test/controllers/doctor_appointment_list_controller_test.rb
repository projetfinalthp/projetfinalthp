require 'test_helper'

class DoctorAppointmentListControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get doctor_appointment_list_show_url
    assert_response :success
  end

end
