require 'test_helper'

class AcknowledgementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acknowledgement = acknowledgements(:one)
  end

  test "should get index" do
    get acknowledgements_url
    assert_response :success
  end

  test "should get new" do
    get new_acknowledgement_url
    assert_response :success
  end

  test "should create acknowledgement" do
    assert_difference('Acknowledgement.count') do
      post acknowledgements_url, params: { acknowledgement: { body: @acknowledgement.body } }
    end

    assert_redirected_to acknowledgement_url(Acknowledgement.last)
  end

  test "should show acknowledgement" do
    get acknowledgement_url(@acknowledgement)
    assert_response :success
  end

  test "should get edit" do
    get edit_acknowledgement_url(@acknowledgement)
    assert_response :success
  end

  test "should update acknowledgement" do
    patch acknowledgement_url(@acknowledgement), params: { acknowledgement: { body: @acknowledgement.body } }
    assert_redirected_to acknowledgement_url(@acknowledgement)
  end

  test "should destroy acknowledgement" do
    assert_difference('Acknowledgement.count', -1) do
      delete acknowledgement_url(@acknowledgement)
    end

    assert_redirected_to acknowledgements_url
  end
end
