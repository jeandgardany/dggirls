require "application_system_test_case"

class CortesTest < ApplicationSystemTestCase
  setup do
    @corte = cortes(:one)
  end

  test "visiting the index" do
    visit cortes_url
    assert_selector "h1", text: "Cortes"
  end

  test "creating a Corte" do
    visit cortes_url
    click_on "New Corte"

    fill_in "Compra", with: @corte.compra_id
    fill_in "Data", with: @corte.data
    fill_in "Qtd Total", with: @corte.qtd_total
    fill_in "Valor", with: @corte.valor
    click_on "Create Corte"

    assert_text "Corte was successfully created"
    click_on "Back"
  end

  test "updating a Corte" do
    visit cortes_url
    click_on "Edit", match: :first

    fill_in "Compra", with: @corte.compra_id
    fill_in "Data", with: @corte.data
    fill_in "Qtd Total", with: @corte.qtd_total
    fill_in "Valor", with: @corte.valor
    click_on "Update Corte"

    assert_text "Corte was successfully updated"
    click_on "Back"
  end

  test "destroying a Corte" do
    visit cortes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Corte was successfully destroyed"
  end
end
