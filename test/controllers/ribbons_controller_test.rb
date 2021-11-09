require "test_helper"

class RibbonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ribbon = ribbons(:one)
  end

  test "should get index" do
    get ribbons_url
    assert_response :success
  end

  test "should get new" do
    get new_ribbon_url
    assert_response :success
  end

  test "should create ribbon" do
    assert_difference('Ribbon.count') do
      post ribbons_url, params: { ribbon: {  } }
    end

    assert_redirected_to ribbon_url(Ribbon.last)
  end

  test "should show ribbon" do
    get ribbon_url(@ribbon)
    assert_response :success
  end

  test "should get edit" do
    get edit_ribbon_url(@ribbon)
    assert_response :success
  end

  test "should update ribbon" do
    patch ribbon_url(@ribbon), params: { ribbon: {  } }
    assert_redirected_to ribbon_url(@ribbon)
  end

  test "should destroy ribbon" do
    assert_difference('Ribbon.count', -1) do
      delete ribbon_url(@ribbon)
    end

    assert_redirected_to ribbons_url
  end
end
