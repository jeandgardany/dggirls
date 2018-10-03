require 'test_helper'

class EntregaEstampasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entrega_estampa = entrega_estampas(:one)
  end

  test "should get index" do
    get entrega_estampas_url
    assert_response :success
  end

  test "should get new" do
    get new_entrega_estampa_url
    assert_response :success
  end

  test "should create entrega_estampa" do
    assert_difference('EntregaEstampa.count') do
      post entrega_estampas_url, params: { entrega_estampa: { costura_id: @entrega_estampa.costura_id, data: @entrega_estampa.data, estampa_id: @entrega_estampa.estampa_id, obs: @entrega_estampa.obs, perdas: @entrega_estampa.perdas, valor: @entrega_estampa.valor } }
    end

    assert_redirected_to entrega_estampa_url(EntregaEstampa.last)
  end

  test "should show entrega_estampa" do
    get entrega_estampa_url(@entrega_estampa)
    assert_response :success
  end

  test "should get edit" do
    get edit_entrega_estampa_url(@entrega_estampa)
    assert_response :success
  end

  test "should update entrega_estampa" do
    patch entrega_estampa_url(@entrega_estampa), params: { entrega_estampa: { costura_id: @entrega_estampa.costura_id, data: @entrega_estampa.data, estampa_id: @entrega_estampa.estampa_id, obs: @entrega_estampa.obs, perdas: @entrega_estampa.perdas, valor: @entrega_estampa.valor } }
    assert_redirected_to entrega_estampa_url(@entrega_estampa)
  end

  test "should destroy entrega_estampa" do
    assert_difference('EntregaEstampa.count', -1) do
      delete entrega_estampa_url(@entrega_estampa)
    end

    assert_redirected_to entrega_estampas_url
  end
end
