require 'test_helper'

class CaixasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caixa = caixas(:one)
  end

  test "should get index" do
    get caixas_url
    assert_response :success
  end

  test "should get new" do
    get new_caixa_url
    assert_response :success
  end

  test "should create caixa" do
    assert_difference('Caixa.count') do
      post caixas_url, params: { caixa: { compra_id: @caixa.compra_id, corte_id: @caixa.corte_id, costura_id: @caixa.costura_id, data: @caixa.data, despesa_id: @caixa.despesa_id, estampa_id: @caixa.estampa_id, extras: @caixa.extras, obs: @caixa.obs, saldo: @caixa.saldo, total_entradas: @caixa.total_entradas, total_perdas: @caixa.total_perdas, total_saidas: @caixa.total_saidas, venda_id: @caixa.venda_id } }
    end

    assert_redirected_to caixa_url(Caixa.last)
  end

  test "should show caixa" do
    get caixa_url(@caixa)
    assert_response :success
  end

  test "should get edit" do
    get edit_caixa_url(@caixa)
    assert_response :success
  end

  test "should update caixa" do
    patch caixa_url(@caixa), params: { caixa: { compra_id: @caixa.compra_id, corte_id: @caixa.corte_id, costura_id: @caixa.costura_id, data: @caixa.data, despesa_id: @caixa.despesa_id, estampa_id: @caixa.estampa_id, extras: @caixa.extras, obs: @caixa.obs, saldo: @caixa.saldo, total_entradas: @caixa.total_entradas, total_perdas: @caixa.total_perdas, total_saidas: @caixa.total_saidas, venda_id: @caixa.venda_id } }
    assert_redirected_to caixa_url(@caixa)
  end

  test "should destroy caixa" do
    assert_difference('Caixa.count', -1) do
      delete caixa_url(@caixa)
    end

    assert_redirected_to caixas_url
  end
end
