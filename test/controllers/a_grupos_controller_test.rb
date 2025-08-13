require "test_helper"

class AGruposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_Grupo = a_grupos(:one)
  end

  test "should get index" do
    get a_grupos_url, as: :json
    assert_response :success
  end

  test "should create a_Grupo" do
    assert_difference("AGrupo.count") do
      post a_grupos_url, params: { a_Grupo: { a_segmento_id: @a_Grupo.a_segmento_id, descricao: @a_Grupo.descricao } }, as: :json
    end

    assert_response :created
  end

  test "should show a_Grupo" do
    get a_Grupo_url(@a_Grupo), as: :json
    assert_response :success
  end

  test "should update a_Grupo" do
    patch a_Grupo_url(@a_Grupo), params: { a_Grupo: { a_segmento_id: @a_Grupo.a_segmento_id, descricao: @a_Grupo.descricao } }, as: :json
    assert_response :success
  end

  test "should destroy a_Grupo" do
    assert_difference("AGrupo.count", -1) do
      delete a_Grupo_url(@a_Grupo), as: :json
    end

    assert_response :no_content
  end
end
