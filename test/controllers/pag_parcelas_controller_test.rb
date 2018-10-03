require 'test_helper'

class PagParcelasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pag_parcela = pag_parcelas(:one)
  end

  test "should get index" do
    get pag_parcelas_url
    assert_response :success
  end

  test "should get new" do
    get new_pag_parcela_url
    assert_response :success
  end

  test "should create pag_parcela" do
    assert_difference('PagParcela.count') do
      post pag_parcelas_url, params: { pag_parcela: { data: @pag_parcela.data, pago: @pag_parcela.pago } }
    end

    assert_redirected_to pag_parcela_url(PagParcela.last)
  end

  test "should show pag_parcela" do
    get pag_parcela_url(@pag_parcela)
    assert_response :success
  end

  test "should get edit" do
    get edit_pag_parcela_url(@pag_parcela)
    assert_response :success
  end

  test "should update pag_parcela" do
    patch pag_parcela_url(@pag_parcela), params: { pag_parcela: { data: @pag_parcela.data, pago: @pag_parcela.pago } }
    assert_redirected_to pag_parcela_url(@pag_parcela)
  end

  test "should destroy pag_parcela" do
    assert_difference('PagParcela.count', -1) do
      delete pag_parcela_url(@pag_parcela)
    end

    assert_redirected_to pag_parcelas_url
  end
end
