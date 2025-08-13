require "test_helper"

class ACategoriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_categoria = a_categorias(:one)
  end

  test "should get index" do
    get a_categorias_url, as: :json
    assert_response :success
  end

  test "should create a_categoria" do
    assert_difference("ACategoria.count") do
      post a_categorias_url, params: { a_categoria: { descricao: @a_categoria.descricao } }, as: :json
    end

    assert_response :created
  end

  test "should show a_categoria" do
    get a_categoria_url(@a_categoria), as: :json
    assert_response :success
  end

  test "should update a_categoria" do
    patch a_categoria_url(@a_categoria), params: { a_categoria: { descricao: @a_categoria.descricao } }, as: :json
    assert_response :success
  end

  test "should destroy a_categoria" do
    assert_difference("ACategoria.count", -1) do
      delete a_categoria_url(@a_categoria), as: :json
    end

    assert_response :no_content
  end
end
