require 'test_helper'

class CorteModelosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corte_modelo = corte_modelos(:one)
  end

  test "should get index" do
    get corte_modelos_url
    assert_response :success
  end

  test "should get new" do
    get new_corte_modelo_url
    assert_response :success
  end

  test "should create corte_modelo" do
    assert_difference('CorteModelo.count') do
      post corte_modelos_url, params: { corte_modelo: { corte_id: @corte_modelo.corte_id, modelo_id: @corte_modelo.modelo_id, qtd: @corte_modelo.qtd } }
    end

    assert_redirected_to corte_modelo_url(CorteModelo.last)
  end

  test "should show corte_modelo" do
    get corte_modelo_url(@corte_modelo)
    assert_response :success
  end

  test "should get edit" do
    get edit_corte_modelo_url(@corte_modelo)
    assert_response :success
  end

  test "should update corte_modelo" do
    patch corte_modelo_url(@corte_modelo), params: { corte_modelo: { corte_id: @corte_modelo.corte_id, modelo_id: @corte_modelo.modelo_id, qtd: @corte_modelo.qtd } }
    assert_redirected_to corte_modelo_url(@corte_modelo)
  end

  test "should destroy corte_modelo" do
    assert_difference('CorteModelo.count', -1) do
      delete corte_modelo_url(@corte_modelo)
    end

    assert_redirected_to corte_modelos_url
  end
end
