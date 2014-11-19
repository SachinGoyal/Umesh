require 'test_helper'

class SupplierBankDetailsControllerTest < ActionController::TestCase
  setup do
    @supplier_bank_detail = supplier_bank_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplier_bank_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier_bank_detail" do
    assert_difference('SupplierBankDetail.count') do
      post :create, supplier_bank_detail: { bank_address: @supplier_bank_detail.bank_address, bank_name: @supplier_bank_detail.bank_name, ifsc_code: @supplier_bank_detail.ifsc_code, note: @supplier_bank_detail.note }
    end

    assert_redirected_to supplier_bank_detail_path(assigns(:supplier_bank_detail))
  end

  test "should show supplier_bank_detail" do
    get :show, id: @supplier_bank_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier_bank_detail
    assert_response :success
  end

  test "should update supplier_bank_detail" do
    patch :update, id: @supplier_bank_detail, supplier_bank_detail: { bank_address: @supplier_bank_detail.bank_address, bank_name: @supplier_bank_detail.bank_name, ifsc_code: @supplier_bank_detail.ifsc_code, note: @supplier_bank_detail.note }
    assert_redirected_to supplier_bank_detail_path(assigns(:supplier_bank_detail))
  end

  test "should destroy supplier_bank_detail" do
    assert_difference('SupplierBankDetail.count', -1) do
      delete :destroy, id: @supplier_bank_detail
    end

    assert_redirected_to supplier_bank_details_path
  end
end
