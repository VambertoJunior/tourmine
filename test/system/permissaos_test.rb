require "application_system_test_case"

class PermissaosTest < ApplicationSystemTestCase
  setup do
    @permissao = permissaos(:one)
  end

  test "visiting the index" do
    visit permissaos_url
    assert_selector "h1", text: "Permissaos"
  end

  test "should create permissao" do
    visit permissaos_url
    click_on "New permissao"

    fill_in "Papel", with: @permissao.papel
    fill_in "Usuario", with: @permissao.usuario_id
    click_on "Create Permissao"

    assert_text "Permissao was successfully created"
    click_on "Back"
  end

  test "should update Permissao" do
    visit permissao_url(@permissao)
    click_on "Edit this permissao", match: :first

    fill_in "Papel", with: @permissao.papel
    fill_in "Usuario", with: @permissao.usuario_id
    click_on "Update Permissao"

    assert_text "Permissao was successfully updated"
    click_on "Back"
  end

  test "should destroy Permissao" do
    visit permissao_url(@permissao)
    click_on "Destroy this permissao", match: :first

    assert_text "Permissao was successfully destroyed"
  end
end
