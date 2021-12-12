require "test_helper"

class HomelikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homelike = homelikes(:one)
  end

  test "should get index" do
    get homelikes_url
    assert_response :success
  end

  test "should get new" do
    get new_homelike_url
    assert_response :success
  end

  test "should create homelike" do
    assert_difference('Homelike.count') do
      post homelikes_url, params: { homelike: { home_id: @homelike.home_id, status: @homelike.status, user_id: @homelike.user_id } }
    end

    assert_redirected_to homelike_url(Homelike.last)
  end

  test "should show homelike" do
    get homelike_url(@homelike)
    assert_response :success
  end

  test "should get edit" do
    get edit_homelike_url(@homelike)
    assert_response :success
  end

  test "should update homelike" do
    patch homelike_url(@homelike), params: { homelike: { home_id: @homelike.home_id, status: @homelike.status, user_id: @homelike.user_id } }
    assert_redirected_to homelike_url(@homelike)
  end

  test "should destroy homelike" do
    assert_difference('Homelike.count', -1) do
      delete homelike_url(@homelike)
    end

    assert_redirected_to homelikes_url
  end
end
