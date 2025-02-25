require "test_helper"

class TorneiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @torneio = torneios(:one)
  end

  test "should get index" do
    get torneios_url
    assert_response :success
  end

  test "should get new" do
    get new_torneio_url
    assert_response :success
  end

  test "should create torneio" do
    assert_difference("Torneio.count") do
      post torneios_url, params: { torneio: { data_fim: @torneio.data_fim, data_inicio: @torneio.data_inicio, descricao: @torneio.descricao, nome: @torneio.nome, organizador: @torneio.organizador } }
    end

    assert_redirected_to torneio_url(Torneio.last)
  end

  test "should show torneio" do
    get torneio_url(@torneio)
    assert_response :success
  end

  test "should get edit" do
    get edit_torneio_url(@torneio)
    assert_response :success
  end

  test "should update torneio" do
    patch torneio_url(@torneio), params: { torneio: { data_fim: @torneio.data_fim, data_inicio: @torneio.data_inicio, descricao: @torneio.descricao, nome: @torneio.nome, organizador: @torneio.organizador } }
    assert_redirected_to torneio_url(@torneio)
  end

  test "should destroy torneio" do
    assert_difference("Torneio.count", -1) do
      delete torneio_url(@torneio)
    end

    assert_redirected_to torneios_url
  end
end
