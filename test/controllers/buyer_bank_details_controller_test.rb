require 'test_helper'

class BuyerBankDetailsControllerTest < ActionController::TestCase
  setup do
    @buyer_bank_detail = buyer_bank_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buyer_bank_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buyer_bank_detail" do
    assert_difference('BuyerBankDetail.count') do
      post :create, buyer_bank_detail: { bank_address: @buyer_bank_detail.bank_address, bank_name: @buyer_bank_detail.bank_name, ifsc_code: @buyer_bank_detail.ifsc_code, note: @buyer_bank_detail.note }
    end

    assert_redirected_to buyer_bank_detail_path(assigns(:buyer_bank_detail))
  end

  test "should show buyer_bank_detail" do
    get :show, id: @buyer_bank_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buyer_bank_detail
    assert_response :success
  end

  test "should update buyer_bank_detail" do
    patch :update, id: @buyer_bank_detail, buyer_bank_detail: { bank_address: @buyer_bank_detail.bank_address, bank_name: @buyer_bank_detail.bank_name, ifsc_code: @buyer_bank_detail.ifsc_code, note: @buyer_bank_detail.note }
    assert_redirected_to buyer_bank_detail_path(assigns(:buyer_bank_detail))
  end

  test "should destroy buyer_bank_detail" do
    assert_difference('BuyerBankDetail.count', -1) do
      delete :destroy, id: @buyer_bank_detail
    end

    assert_redirected_to buyer_bank_details_path
  end
end
