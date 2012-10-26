require 'test_helper'

class SeguindoControllerTest < ActionController::TestCase
  setup do
    @seguindo = seguindo(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seguindo)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seguindo" do
    assert_difference('Seguindo.count') do
      post :create, seguindo: { tipo: @seguindo.tipo }
    end

    assert_redirected_to seguindo_path(assigns(:seguindo))
  end

  test "should show seguindo" do
    get :show, id: @seguindo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seguindo
    assert_response :success
  end

  test "should update seguindo" do
    put :update, id: @seguindo, seguindo: { tipo: @seguindo.tipo }
    assert_redirected_to seguindo_path(assigns(:seguindo))
  end

  test "should destroy seguindo" do
    assert_difference('Seguindo.count', -1) do
      delete :destroy, id: @seguindo
    end

    assert_redirected_to seguindo_index_path
  end
end
