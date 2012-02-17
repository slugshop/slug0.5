require 'test_helper'

class OnLoansControllerTest < ActionController::TestCase
  setup do
    @on_loan = on_loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:on_loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create on_loan" do
    assert_difference('OnLoan.count') do
      post :create, on_loan: @on_loan.attributes
    end

    assert_redirected_to on_loan_path(assigns(:on_loan))
  end

  test "should show on_loan" do
    get :show, id: @on_loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @on_loan
    assert_response :success
  end

  test "should update on_loan" do
    put :update, id: @on_loan, on_loan: @on_loan.attributes
    assert_redirected_to on_loan_path(assigns(:on_loan))
  end

  test "should destroy on_loan" do
    assert_difference('OnLoan.count', -1) do
      delete :destroy, id: @on_loan
    end

    assert_redirected_to on_loans_path
  end
end
