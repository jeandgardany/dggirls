require "application_system_test_case"

class EntregasTest < ApplicationSystemTestCase
  setup do
    @entrega = entregas(:one)
  end

  test "visiting the index" do
    visit entregas_url
    assert_selector "h1", text: "Entregas"
  end

  test "creating a Entrega" do
    visit entregas_url
    click_on "New Entrega"

    fill_in "Costura", with: @entrega.costura_id
    fill_in "Data", with: @entrega.data
    fill_in "Finalizado", with: @entrega.finalizado
    fill_in "Obs", with: @entrega.obs
    fill_in "Perdas", with: @entrega.perdas
    fill_in "Qtd Entrega", with: @entrega.qtd_entrega
    fill_in "Restante", with: @entrega.restante
    fill_in "Valor Pago", with: @entrega.valor_pago
    click_on "Create Entrega"

    assert_text "Entrega was successfully created"
    click_on "Back"
  end

  test "updating a Entrega" do
    visit entregas_url
    click_on "Edit", match: :first

    fill_in "Costura", with: @entrega.costura_id
    fill_in "Data", with: @entrega.data
    fill_in "Finalizado", with: @entrega.finalizado
    fill_in "Obs", with: @entrega.obs
    fill_in "Perdas", with: @entrega.perdas
    fill_in "Qtd Entrega", with: @entrega.qtd_entrega
    fill_in "Restante", with: @entrega.restante
    fill_in "Valor Pago", with: @entrega.valor_pago
    click_on "Update Entrega"

    assert_text "Entrega was successfully updated"
    click_on "Back"
  end

  test "destroying a Entrega" do
    visit entregas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entrega was successfully destroyed"
  end
end
