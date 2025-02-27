require "application_system_test_case"

class InscricaosTest < ApplicationSystemTestCase
  setup do
    @inscricao = inscricaos(:one)
  end

  test "visiting the index" do
    visit inscricaos_url
    assert_selector "h1", text: "Inscricaos"
  end

  test "should create inscricao" do
    visit inscricaos_url
    click_on "Criar inscrição"

    fill_in "Participante", with: @inscricao.participante
    fill_in "Status", with: @inscricao.status
    fill_in "Torneio", with: @inscricao.torneio_id
    click_on "Criar inscrição"

    assert_text "Inscricao was successfully created"
    click_on "Back"
  end

  test "should update Inscricao" do
    visit inscricao_url(@inscricao)
    click_on "Edite esta inscrição", match: :first

    fill_in "Participante", with: @inscricao.participante
    fill_in "Status", with: @inscricao.status
    fill_in "Torneio", with: @inscricao.torneio_id
    click_on "Update Inscricao"

    assert_text "Inscricao was successfully updated"
    click_on "Back"
  end

  test "should destroy Inscricao" do
    visit inscricao_url(@inscricao)
    click_on "Destrua esta inscrição", match: :first

    assert_text "Inscricao was successfully destroyed"
  end
end
