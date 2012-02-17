require 'test_helper'

class CadetsControllerTest < ActionController::TestCase
  setup do
    @cadet = cadets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadet" do
    assert_difference('Cadet.count') do
      post :create, cadet: @cadet.attributes
    end

    assert_redirected_to cadet_path(assigns(:cadet))
  end

  test "should show cadet" do
    get :show, id: @cadet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadet
    assert_response :success
  end

  test "should update cadet" do
    put :update, id: @cadet, cadet: @cadet.attributes
    assert_redirected_to cadet_path(assigns(:cadet))
  end

  test "should destroy cadet" do
    assert_difference('Cadet.count', -1) do
      delete :destroy, id: @cadet
    end

    assert_redirected_to cadets_path
  end
end
