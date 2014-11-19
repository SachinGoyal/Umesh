class SupplierBankDetailsController < ApplicationController
  before_action :set_supplier_bank_detail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_bank_details = SupplierBankDetail.all
    respond_with(@supplier_bank_details)
  end

  def show
    respond_with(@supplier_bank_detail)
  end

  def new
    @supplier_bank_detail = SupplierBankDetail.new
    respond_with(@supplier_bank_detail)
  end

  def edit
  end

  def create
    @supplier_bank_detail = SupplierBankDetail.new(supplier_bank_detail_params)
    @supplier_bank_detail.save
    respond_with(@supplier_bank_detail)
  end

  def update
    @supplier_bank_detail.update(supplier_bank_detail_params)
    respond_with(@supplier_bank_detail)
  end

  def destroy
    @supplier_bank_detail.destroy
    respond_with(@supplier_bank_detail)
  end

  private
    def set_supplier_bank_detail
      @supplier_bank_detail = SupplierBankDetail.find(params[:id])
    end

    def supplier_bank_detail_params
      params.require(:supplier_bank_detail).permit(:bank_name, :bank_address, :ifsc_code, :note ,:supplier_id)
    end
end
