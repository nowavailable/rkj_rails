require 'test_helper'

class UserSpecializedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_specialized = user_specializeds(:one)
  end

  test "should get index" do
    get user_specializeds_url
    assert_response :success
  end

  test "should get new" do
    get new_user_specialized_url
    assert_response :success
  end

  test "should create user_specialized" do
    assert_difference('UserSpecialized.count') do
      post user_specializeds_url, params: { user_specialized: {  } }
    end

    assert_redirected_to user_specialized_url(UserSpecialized.last)
  end

  test "should show user_specialized" do
    get user_specialized_url(@user_specialized)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_specialized_url(@user_specialized)
    assert_response :success
  end

  test "should update user_specialized" do
    patch user_specialized_url(@user_specialized), params: { user_specialized: {  } }
    assert_redirected_to user_specialized_url(@user_specialized)
  end

  test "should destroy user_specialized" do
    assert_difference('UserSpecialized.count', -1) do
      delete user_specialized_url(@user_specialized)
    end

    assert_redirected_to user_specializeds_url
  end
end
