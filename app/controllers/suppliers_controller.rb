class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @suppliers = Supplier.all
    respond_with(@suppliers)
  end

  def show
    @supplier = Supplier.find(params[:id])
    @supplier_bank_details = @supplier.supplier_bank_details
    respond_with(@supplier)
  end

  def new
    @supplier = Supplier.new
    respond_with(@supplier)
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)
    @supplier.save
    respond_with(@supplier)
  end

  def update
    @supplier.update(supplier_params)
    respond_with(@supplier)
  end

  def destroy
    @supplier.destroy
    respond_with(@supplier)
  end

  private
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    def supplier_params
      params.require(:supplier).permit(:name, :company_name, :address, :zip_code, :state, :country, :email, :telephone_no, :mobile_number, :comment ,supplier_bank_account_attributes: [:id, :bank_name ,:bank_address,:ifsc_code,:ifsc_no,:note])
    end
end
