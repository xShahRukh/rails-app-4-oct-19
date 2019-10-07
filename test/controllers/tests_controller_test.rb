require 'test_helper'

class TestsControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get tests_add_url
    assert_response :success
  end

  test "should get edit" do
    get tests_edit_url
    assert_response :success
  end

  test "should get delete" do
    get tests_delete_url
    assert_response :success
  end

  test "should get show" do
    get tests_show_url
    assert_response :success
  end

end
