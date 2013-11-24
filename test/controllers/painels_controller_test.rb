require 'test_helper'

class PainelsControllerTest < ActionController::TestCase
  setup do
    @painel = painels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:painels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create painel" do
    assert_difference('Painel.count') do
      post :create, painel: { nome_app: @painel.nome_app, tipo_evento: @painel.tipo_evento }
    end

    assert_redirected_to painel_path(assigns(:painel))
  end

  test "should show painel" do
    get :show, id: @painel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @painel
    assert_response :success
  end

  test "should update painel" do
    patch :update, id: @painel, painel: { nome_app: @painel.nome_app, tipo_evento: @painel.tipo_evento }
    assert_redirected_to painel_path(assigns(:painel))
  end

  test "should destroy painel" do
    assert_difference('Painel.count', -1) do
      delete :destroy, id: @painel
    end

    assert_redirected_to painels_path
  end
end
