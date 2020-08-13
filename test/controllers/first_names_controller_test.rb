require 'test_helper'

class FirstNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_name = first_names(:one)
  end

  test "should get index" do
    get first_names_url, as: :json
    assert_response :success
  end

  test "should create first_name" do
    assert_difference('FirstName.count') do
      post first_names_url, params: { first_name: { gender: @first_name.gender, name: @first_name.name, nationality: @first_name.nationality } }, as: :json
    end

    assert_response 201
  end

  test "should show first_name" do
    get first_name_url(@first_name), as: :json
    assert_response :success
  end

  test "should update first_name" do
    patch first_name_url(@first_name), params: { first_name: { gender: @first_name.gender, name: @first_name.name, nationality: @first_name.nationality } }, as: :json
    assert_response 200
  end

  test "should destroy first_name" do
    assert_difference('FirstName.count', -1) do
      delete first_name_url(@first_name), as: :json
    end

    assert_response 204
  end
end
