require "application_system_test_case"

class EntregaEstampasTest < ApplicationSystemTestCase
  setup do
    @entrega_estampa = entrega_estampas(:one)
  end

  test "visiting the index" do
    visit entrega_estampas_url
    assert_selector "h1", text: "Entrega Estampas"
  end

  test "creating a Entrega estampa" do
    visit entrega_estampas_url
    click_on "New Entrega Estampa"

    fill_in "Costura", with: @entrega_estampa.costura_id
    fill_in "Data", with: @entrega_estampa.data
    fill_in "Estampa", with: @entrega_estampa.estampa_id
    fill_in "Obs", with: @entrega_estampa.obs
    fill_in "Perdas", with: @entrega_estampa.perdas
    fill_in "Valor", with: @entrega_estampa.valor
    click_on "Create Entrega estampa"

    assert_text "Entrega estampa was successfully created"
    click_on "Back"
  end

  test "updating a Entrega estampa" do
    visit entrega_estampas_url
    click_on "Edit", match: :first

    fill_in "Costura", with: @entrega_estampa.costura_id
    fill_in "Data", with: @entrega_estampa.data
    fill_in "Estampa", with: @entrega_estampa.estampa_id
    fill_in "Obs", with: @entrega_estampa.obs
    fill_in "Perdas", with: @entrega_estampa.perdas
    fill_in "Valor", with: @entrega_estampa.valor
    click_on "Update Entrega estampa"

    assert_text "Entrega estampa was successfully updated"
    click_on "Back"
  end

  test "destroying a Entrega estampa" do
    visit entrega_estampas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entrega estampa was successfully destroyed"
  end
end
