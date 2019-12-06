require 'test_helper'

class PatientListControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get patient_list_show_url
    assert_response :success
  end

end
