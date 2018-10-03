require "application_system_test_case"

class CaixasTest < ApplicationSystemTestCase
  setup do
    @caixa = caixas(:one)
  end

  test "visiting the index" do
    visit caixas_url
    assert_selector "h1", text: "Caixas"
  end

  test "creating a Caixa" do
    visit caixas_url
    click_on "New Caixa"

    fill_in "Compra", with: @caixa.compra_id
    fill_in "Corte", with: @caixa.corte_id
    fill_in "Costura", with: @caixa.costura_id
    fill_in "Data", with: @caixa.data
    fill_in "Despesa", with: @caixa.despesa_id
    fill_in "Estampa", with: @caixa.estampa_id
    fill_in "Extras", with: @caixa.extras
    fill_in "Obs", with: @caixa.obs
    fill_in "Saldo", with: @caixa.saldo
    fill_in "Total Entradas", with: @caixa.total_entradas
    fill_in "Total Perdas", with: @caixa.total_perdas
    fill_in "Total Saidas", with: @caixa.total_saidas
    fill_in "Venda", with: @caixa.venda_id
    click_on "Create Caixa"

    assert_text "Caixa was successfully created"
    click_on "Back"
  end

  test "updating a Caixa" do
    visit caixas_url
    click_on "Edit", match: :first

    fill_in "Compra", with: @caixa.compra_id
    fill_in "Corte", with: @caixa.corte_id
    fill_in "Costura", with: @caixa.costura_id
    fill_in "Data", with: @caixa.data
    fill_in "Despesa", with: @caixa.despesa_id
    fill_in "Estampa", with: @caixa.estampa_id
    fill_in "Extras", with: @caixa.extras
    fill_in "Obs", with: @caixa.obs
    fill_in "Saldo", with: @caixa.saldo
    fill_in "Total Entradas", with: @caixa.total_entradas
    fill_in "Total Perdas", with: @caixa.total_perdas
    fill_in "Total Saidas", with: @caixa.total_saidas
    fill_in "Venda", with: @caixa.venda_id
    click_on "Update Caixa"

    assert_text "Caixa was successfully updated"
    click_on "Back"
  end

  test "destroying a Caixa" do
    visit caixas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Caixa was successfully destroyed"
  end
end
