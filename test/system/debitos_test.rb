require "application_system_test_case"

class DebitosTest < ApplicationSystemTestCase
  setup do
    @debito = debitos(:one)
  end

  test "visiting the index" do
    visit debitos_url
    assert_selector "h1", text: "Debitos"
  end

  test "creating a Debito" do
    visit debitos_url
    click_on "New Debito"

    fill_in "Compra", with: @debito.compra_id
    fill_in "Qtd Parcelas", with: @debito.qtd_parcelas
    click_on "Create Debito"

    assert_text "Debito was successfully created"
    click_on "Back"
  end

  test "updating a Debito" do
    visit debitos_url
    click_on "Edit", match: :first

    fill_in "Compra", with: @debito.compra_id
    fill_in "Qtd Parcelas", with: @debito.qtd_parcelas
    click_on "Update Debito"

    assert_text "Debito was successfully updated"
    click_on "Back"
  end

  test "destroying a Debito" do
    visit debitos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debito was successfully destroyed"
  end
end
