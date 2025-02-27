require "application_system_test_case"

class TorneiosTest < ApplicationSystemTestCase
  setup do
    @torneio = torneios(:one)
  end

  test "visiting the index" do
    visit torneios_url
    assert_selector "h1", text: "Torneios"
  end

  test "should create torneio" do
    visit torneios_url
    click_on "Criar torneio"

    fill_in "Data fim", with: @torneio.data_fim
    fill_in "Data inicio", with: @torneio.data_inicio
    fill_in "Descricao", with: @torneio.descricao
    fill_in "Nome", with: @torneio.nome
    fill_in "Organizador", with: @torneio.organizador
    click_on "Criar torneio"

    assert_text "Torneio was successfully created"
    click_on "Back"
  end

  test "should update Torneio" do
    visit torneio_url(@torneio)
    click_on "Edite este torneio", match: :first

    fill_in "Data fim", with: @torneio.data_fim
    fill_in "Data inicio", with: @torneio.data_inicio
    fill_in "Descricao", with: @torneio.descricao
    fill_in "Nome", with: @torneio.nome
    fill_in "Organizador", with: @torneio.organizador
    click_on "Update Torneio"

    assert_text "Torneio was successfully updated"
    click_on "Back"
  end

  test "should destroy Torneio" do
    visit torneio_url(@torneio)
    click_on "Destrua esse torneio", match: :first

    assert_text "Torneio was successfully destroyed"
  end
end
