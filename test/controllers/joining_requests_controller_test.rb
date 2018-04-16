require 'test_helper'

class JoiningRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joining_request = joining_requests(:one)
  end

  test "should get index" do
    get joining_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_joining_request_url
    assert_response :success
  end

  test "should create joining_request" do
    assert_difference('JoiningRequest.count') do
      post joining_requests_url, params: { joining_request: {  } }
    end

    assert_redirected_to joining_request_url(JoiningRequest.last)
  end

  test "should show joining_request" do
    get joining_request_url(@joining_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_joining_request_url(@joining_request)
    assert_response :success
  end

  test "should update joining_request" do
    patch joining_request_url(@joining_request), params: { joining_request: {  } }
    assert_redirected_to joining_request_url(@joining_request)
  end

  test "should destroy joining_request" do
    assert_difference('JoiningRequest.count', -1) do
      delete joining_request_url(@joining_request)
    end

    assert_redirected_to joining_requests_url
  end
end
