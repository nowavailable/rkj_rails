require 'test_helper'

class ChangeEmailRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_email_request = change_email_requests(:one)
  end

  test "should get index" do
    get change_email_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_change_email_request_url
    assert_response :success
  end

  test "should create change_email_request" do
    assert_difference('ChangeEmailRequest.count') do
      post change_email_requests_url, params: { change_email_request: {  } }
    end

    assert_redirected_to change_email_request_url(ChangeEmailRequest.last)
  end

  test "should show change_email_request" do
    get change_email_request_url(@change_email_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_email_request_url(@change_email_request)
    assert_response :success
  end

  test "should update change_email_request" do
    patch change_email_request_url(@change_email_request), params: { change_email_request: {  } }
    assert_redirected_to change_email_request_url(@change_email_request)
  end

  test "should destroy change_email_request" do
    assert_difference('ChangeEmailRequest.count', -1) do
      delete change_email_request_url(@change_email_request)
    end

    assert_redirected_to change_email_requests_url
  end
end
