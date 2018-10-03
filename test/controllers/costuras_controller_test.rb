require 'test_helper'

class CosturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @costura = costuras(:one)
  end

  test "should get index" do
    get costuras_url
    assert_response :success
  end

  test "should get new" do
    get new_costura_url
    assert_response :success
  end

  test "should create costura" do
    assert_difference('Costura.count') do
      post costuras_url, params: { costura: { corte_id: @costura.corte_id, data: @costura.data, faccao: @costura.faccao, qtd_total: @costura.qtd_total } }
    end

    assert_redirected_to costura_url(Costura.last)
  end

  test "should show costura" do
    get costura_url(@costura)
    assert_response :success
  end

  test "should get edit" do
    get edit_costura_url(@costura)
    assert_response :success
  end

  test "should update costura" do
    patch costura_url(@costura), params: { costura: { corte_id: @costura.corte_id, data: @costura.data, faccao: @costura.faccao, qtd_total: @costura.qtd_total } }
    assert_redirected_to costura_url(@costura)
  end

  test "should destroy costura" do
    assert_difference('Costura.count', -1) do
      delete costura_url(@costura)
    end

    assert_redirected_to costuras_url
  end
end
