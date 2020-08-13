require 'test_helper'

class RandomNamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get random_names_index_url
    assert_response :success
  end

end
