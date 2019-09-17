require 'test_helper'

class CommandsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get commands_create_url
    assert_response :success
  end

  test "should get show" do
    get commands_show_url
    assert_response :success
  end

  test "should get destroy" do
    get commands_destroy_url
    assert_response :success
  end

end
