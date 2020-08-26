require 'test_helper'

class SsnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ssn = ssns(:one)
  end

  test "should get index" do
    get ssns_url, as: :json
    assert_response :success
  end

  test "should create ssn" do
    assert_difference('Ssn.count') do
      post ssns_url, params: { ssn: { number: @ssn.number, user_id: @ssn.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ssn" do
    get ssn_url(@ssn), as: :json
    assert_response :success
  end

  test "should update ssn" do
    patch ssn_url(@ssn), params: { ssn: { number: @ssn.number, user_id: @ssn.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy ssn" do
    assert_difference('Ssn.count', -1) do
      delete ssn_url(@ssn), as: :json
    end

    assert_response 204
  end
end
