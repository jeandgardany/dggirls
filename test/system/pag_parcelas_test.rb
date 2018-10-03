require "application_system_test_case"

class PagParcelasTest < ApplicationSystemTestCase
  setup do
    @pag_parcela = pag_parcelas(:one)
  end

  test "visiting the index" do
    visit pag_parcelas_url
    assert_selector "h1", text: "Pag Parcelas"
  end

  test "creating a Pag parcela" do
    visit pag_parcelas_url
    click_on "New Pag Parcela"

    fill_in "Data", with: @pag_parcela.data
    fill_in "Pago", with: @pag_parcela.pago
    click_on "Create Pag parcela"

    assert_text "Pag parcela was successfully created"
    click_on "Back"
  end

  test "updating a Pag parcela" do
    visit pag_parcelas_url
    click_on "Edit", match: :first

    fill_in "Data", with: @pag_parcela.data
    fill_in "Pago", with: @pag_parcela.pago
    click_on "Update Pag parcela"

    assert_text "Pag parcela was successfully updated"
    click_on "Back"
  end

  test "destroying a Pag parcela" do
    visit pag_parcelas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pag parcela was successfully destroyed"
  end
end
