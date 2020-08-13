require 'test_helper'

class LastNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @last_name = last_names(:one)
  end

  test "should get index" do
    get last_names_url, as: :json
    assert_response :success
  end

  test "should create last_name" do
    assert_difference('LastName.count') do
      post last_names_url, params: { last_name: { name: @last_name.name, nationality: @last_name.nationality } }, as: :json
    end

    assert_response 201
  end

  test "should show last_name" do
    get last_name_url(@last_name), as: :json
    assert_response :success
  end

  test "should update last_name" do
    patch last_name_url(@last_name), params: { last_name: { name: @last_name.name, nationality: @last_name.nationality } }, as: :json
    assert_response 200
  end

  test "should destroy last_name" do
    assert_difference('LastName.count', -1) do
      delete last_name_url(@last_name), as: :json
    end

    assert_response 204
  end
end
