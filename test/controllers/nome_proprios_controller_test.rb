require 'test_helper'

class NomePropriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nome_proprio = nome_proprios(:one)
  end

  test "should get index" do
    get nome_proprios_url, as: :json
    assert_response :success
  end

  test "should create nome_proprio" do
    assert_difference('NomeProprio.count') do
      post nome_proprios_url, params: { nome_proprio: { genero: @nome_proprio.genero, nacionalidade: @nome_proprio.nacionalidade, nome: @nome_proprio.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show nome_proprio" do
    get nome_proprio_url(@nome_proprio), as: :json
    assert_response :success
  end

  test "should update nome_proprio" do
    patch nome_proprio_url(@nome_proprio), params: { nome_proprio: { genero: @nome_proprio.genero, nacionalidade: @nome_proprio.nacionalidade, nome: @nome_proprio.nome } }, as: :json
    assert_response 200
  end

  test "should destroy nome_proprio" do
    assert_difference('NomeProprio.count', -1) do
      delete nome_proprio_url(@nome_proprio), as: :json
    end

    assert_response 204
  end
end
