require 'test_helper'

class JoinComMenusControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get join_com_menus_show_url
    assert_response :success
  end

  test "should get new" do
    get join_com_menus_new_url
    assert_response :success
  end

  test "should get create" do
    get join_com_menus_create_url
    assert_response :success
  end

  test "should get destroy" do
    get join_com_menus_destroy_url
    assert_response :success
  end

end
