require 'test_helper'

class VendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venda = vendas(:one)
  end

  test "should get index" do
    get vendas_url
    assert_response :success
  end

  test "should get new" do
    get new_venda_url
    assert_response :success
  end

  test "should create venda" do
    assert_difference('Venda.count') do
      post vendas_url, params: { venda: { cartao: @venda.cartao, data: @venda.data, dinheiro: @venda.dinheiro, nota: @venda.nota, valor_venda: @venda.valor_venda } }
    end

    assert_redirected_to venda_url(Venda.last)
  end

  test "should show venda" do
    get venda_url(@venda)
    assert_response :success
  end

  test "should get edit" do
    get edit_venda_url(@venda)
    assert_response :success
  end

  test "should update venda" do
    patch venda_url(@venda), params: { venda: { cartao: @venda.cartao, data: @venda.data, dinheiro: @venda.dinheiro, nota: @venda.nota, valor_venda: @venda.valor_venda } }
    assert_redirected_to venda_url(@venda)
  end

  test "should destroy venda" do
    assert_difference('Venda.count', -1) do
      delete venda_url(@venda)
    end

    assert_redirected_to vendas_url
  end
end
