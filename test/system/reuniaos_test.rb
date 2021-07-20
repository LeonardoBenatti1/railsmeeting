require "application_system_test_case"

class ReuniaosTest < ApplicationSystemTestCase
  setup do
    @reuniao = reuniaos(:one)
  end

  test "visiting the index" do
    visit reuniaos_url
    assert_selector "h1", text: "Reuniaos"
  end

  test "creating a Reuniao" do
    visit reuniaos_url
    click_on "New Reuniao"

    fill_in "Data", with: @reuniao.data
    fill_in "Descricao", with: @reuniao.descricao
    fill_in "Nome completo", with: @reuniao.nome_completo
    click_on "Create Reuniao"

    assert_text "Reuniao was successfully created"
    click_on "Back"
  end

  test "updating a Reuniao" do
    visit reuniaos_url
    click_on "Edit", match: :first

    fill_in "Data", with: @reuniao.data
    fill_in "Descricao", with: @reuniao.descricao
    fill_in "Nome completo", with: @reuniao.nome_completo
    click_on "Update Reuniao"

    assert_text "Reuniao was successfully updated"
    click_on "Back"
  end

  test "destroying a Reuniao" do
    visit reuniaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reuniao was successfully destroyed"
  end
end
