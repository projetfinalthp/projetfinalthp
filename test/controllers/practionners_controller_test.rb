require 'test_helper'

class PractionnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get practionners_index_url
    assert_response :success
  end

  test "should get show" do
    get practionners_show_url
    assert_response :success
  end

  test "should get edit" do
    get practionners_edit_url
    assert_response :success
  end

end
