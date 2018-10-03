require "application_system_test_case"

class CosturasTest < ApplicationSystemTestCase
  setup do
    @costura = costuras(:one)
  end

  test "visiting the index" do
    visit costuras_url
    assert_selector "h1", text: "Costuras"
  end

  test "creating a Costura" do
    visit costuras_url
    click_on "New Costura"

    fill_in "Corte", with: @costura.corte_id
    fill_in "Data", with: @costura.data
    fill_in "Faccao", with: @costura.faccao
    fill_in "Qtd Total", with: @costura.qtd_total
    click_on "Create Costura"

    assert_text "Costura was successfully created"
    click_on "Back"
  end

  test "updating a Costura" do
    visit costuras_url
    click_on "Edit", match: :first

    fill_in "Corte", with: @costura.corte_id
    fill_in "Data", with: @costura.data
    fill_in "Faccao", with: @costura.faccao
    fill_in "Qtd Total", with: @costura.qtd_total
    click_on "Update Costura"

    assert_text "Costura was successfully updated"
    click_on "Back"
  end

  test "destroying a Costura" do
    visit costuras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Costura was successfully destroyed"
  end
end
