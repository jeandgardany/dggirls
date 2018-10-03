require "application_system_test_case"

class EstampasTest < ApplicationSystemTestCase
  setup do
    @estampa = estampas(:one)
  end

  test "visiting the index" do
    visit estampas_url
    assert_selector "h1", text: "Estampas"
  end

  test "creating a Estampa" do
    visit estampas_url
    click_on "New Estampa"

    fill_in "Corte", with: @estampa.corte_id
    fill_in "Data", with: @estampa.data
    fill_in "Estampa Tipo", with: @estampa.estampa_tipo
    fill_in "Finalizado", with: @estampa.finalizado
    fill_in "Qtd Total", with: @estampa.qtd_total
    fill_in "Valor Total", with: @estampa.valor_total
    click_on "Create Estampa"

    assert_text "Estampa was successfully created"
    click_on "Back"
  end

  test "updating a Estampa" do
    visit estampas_url
    click_on "Edit", match: :first

    fill_in "Corte", with: @estampa.corte_id
    fill_in "Data", with: @estampa.data
    fill_in "Estampa Tipo", with: @estampa.estampa_tipo
    fill_in "Finalizado", with: @estampa.finalizado
    fill_in "Qtd Total", with: @estampa.qtd_total
    fill_in "Valor Total", with: @estampa.valor_total
    click_on "Update Estampa"

    assert_text "Estampa was successfully updated"
    click_on "Back"
  end

  test "destroying a Estampa" do
    visit estampas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estampa was successfully destroyed"
  end
end
