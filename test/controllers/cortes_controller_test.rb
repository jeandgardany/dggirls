require 'test_helper'

class CortesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corte = cortes(:one)
  end

  test "should get index" do
    get cortes_url
    assert_response :success
  end

  test "should get new" do
    get new_corte_url
    assert_response :success
  end

  test "should create corte" do
    assert_difference('Corte.count') do
      post cortes_url, params: { corte: { compra_id: @corte.compra_id, data: @corte.data, qtd_total: @corte.qtd_total, valor: @corte.valor } }
    end

    assert_redirected_to corte_url(Corte.last)
  end

  test "should show corte" do
    get corte_url(@corte)
    assert_response :success
  end

  test "should get edit" do
    get edit_corte_url(@corte)
    assert_response :success
  end

  test "should update corte" do
    patch corte_url(@corte), params: { corte: { compra_id: @corte.compra_id, data: @corte.data, qtd_total: @corte.qtd_total, valor: @corte.valor } }
    assert_redirected_to corte_url(@corte)
  end

  test "should destroy corte" do
    assert_difference('Corte.count', -1) do
      delete corte_url(@corte)
    end

    assert_redirected_to cortes_url
  end
end
