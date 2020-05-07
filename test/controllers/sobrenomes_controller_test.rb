require 'test_helper'

class SobrenomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sobrenome = sobrenomes(:one)
  end

  test "should get index" do
    get sobrenomes_url, as: :json
    assert_response :success
  end

  test "should create sobrenome" do
    assert_difference('Sobrenome.count') do
      post sobrenomes_url, params: { sobrenome: { nacionalidade: @sobrenome.nacionalidade, nome: @sobrenome.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show sobrenome" do
    get sobrenome_url(@sobrenome), as: :json
    assert_response :success
  end

  test "should update sobrenome" do
    patch sobrenome_url(@sobrenome), params: { sobrenome: { nacionalidade: @sobrenome.nacionalidade, nome: @sobrenome.nome } }, as: :json
    assert_response 200
  end

  test "should destroy sobrenome" do
    assert_difference('Sobrenome.count', -1) do
      delete sobrenome_url(@sobrenome), as: :json
    end

    assert_response 204
  end
end
