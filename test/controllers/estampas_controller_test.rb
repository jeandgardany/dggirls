require 'test_helper'

class EstampasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estampa = estampas(:one)
  end

  test "should get index" do
    get estampas_url
    assert_response :success
  end

  test "should get new" do
    get new_estampa_url
    assert_response :success
  end

  test "should create estampa" do
    assert_difference('Estampa.count') do
      post estampas_url, params: { estampa: { corte_id: @estampa.corte_id, data: @estampa.data, estampa_tipo: @estampa.estampa_tipo, finalizado: @estampa.finalizado, qtd_total: @estampa.qtd_total, valor_total: @estampa.valor_total } }
    end

    assert_redirected_to estampa_url(Estampa.last)
  end

  test "should show estampa" do
    get estampa_url(@estampa)
    assert_response :success
  end

  test "should get edit" do
    get edit_estampa_url(@estampa)
    assert_response :success
  end

  test "should update estampa" do
    patch estampa_url(@estampa), params: { estampa: { corte_id: @estampa.corte_id, data: @estampa.data, estampa_tipo: @estampa.estampa_tipo, finalizado: @estampa.finalizado, qtd_total: @estampa.qtd_total, valor_total: @estampa.valor_total } }
    assert_redirected_to estampa_url(@estampa)
  end

  test "should destroy estampa" do
    assert_difference('Estampa.count', -1) do
      delete estampa_url(@estampa)
    end

    assert_redirected_to estampas_url
  end
end
