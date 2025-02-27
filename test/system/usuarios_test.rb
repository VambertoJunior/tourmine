require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "should create usuario" do
    visit usuarios_url
    click_on "Criar Usuário"

    fill_in "Email", with: @usuario.email
    fill_in "Nome", with: @usuario.nome
    fill_in "Tipo", with: @usuario.tipo
    click_on "Criar Usuário"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "should update Usuario" do
    visit usuario_url(@usuario)
    click_on "Edite este usuário", match: :first

    fill_in "Email", with: @usuario.email
    fill_in "Nome", with: @usuario.nome
    fill_in "Tipo", with: @usuario.tipo
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "should destroy Usuario" do
    visit usuario_url(@usuario)
    click_on "Destrua esse usuário", match: :first

    assert_text "Usuario was successfully destroyed"
  end
end
