require "test_helper"

class ASegmentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_segmento = a_segmentos(:one)
  end

  test "should get index" do
    get a_segmentos_url, as: :json
    assert_response :success
  end

  test "should create a_segmento" do
    assert_difference("ASegmento.count") do
      post a_segmentos_url, params: { a_segmento: { a_categoria_id: @a_segmento.a_categoria_id, descricao: @a_segmento.descricao } }, as: :json
    end

    assert_response :created
  end

  test "should show a_segmento" do
    get a_segmento_url(@a_segmento), as: :json
    assert_response :success
  end

  test "should update a_segmento" do
    patch a_segmento_url(@a_segmento), params: { a_segmento: { a_categoria_id: @a_segmento.a_categoria_id, descricao: @a_segmento.descricao } }, as: :json
    assert_response :success
  end

  test "should destroy a_segmento" do
    assert_difference("ASegmento.count", -1) do
      delete a_segmento_url(@a_segmento), as: :json
    end

    assert_response :no_content
  end
end
