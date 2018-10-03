require "application_system_test_case"

class CorteModelosTest < ApplicationSystemTestCase
  setup do
    @corte_modelo = corte_modelos(:one)
  end

  test "visiting the index" do
    visit corte_modelos_url
    assert_selector "h1", text: "Corte Modelos"
  end

  test "creating a Corte modelo" do
    visit corte_modelos_url
    click_on "New Corte Modelo"

    fill_in "Corte", with: @corte_modelo.corte_id
    fill_in "Modelo", with: @corte_modelo.modelo_id
    fill_in "Qtd", with: @corte_modelo.qtd
    click_on "Create Corte modelo"

    assert_text "Corte modelo was successfully created"
    click_on "Back"
  end

  test "updating a Corte modelo" do
    visit corte_modelos_url
    click_on "Edit", match: :first

    fill_in "Corte", with: @corte_modelo.corte_id
    fill_in "Modelo", with: @corte_modelo.modelo_id
    fill_in "Qtd", with: @corte_modelo.qtd
    click_on "Update Corte modelo"

    assert_text "Corte modelo was successfully updated"
    click_on "Back"
  end

  test "destroying a Corte modelo" do
    visit corte_modelos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Corte modelo was successfully destroyed"
  end
end
