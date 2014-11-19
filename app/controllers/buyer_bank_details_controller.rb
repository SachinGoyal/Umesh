class BuyerBankDetailsController < ApplicationController
  before_action :set_buyer_bank_detail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @buyer_bank_details = BuyerBankDetail.all
    respond_with(@buyer_bank_details)
  end

  def show
    respond_with(@buyer_bank_detail)
  end

  def new
    @buyer_bank_detail = BuyerBankDetail.new
    respond_with(@buyer_bank_detail)
  end

  def edit
  end

  def create
    @buyer_bank_detail = BuyerBankDetail.new(buyer_bank_detail_params)
    @buyer_bank_detail.save
    respond_with(@buyer_bank_detail)
  end

  def update
    @buyer_bank_detail.update(buyer_bank_detail_params)
    respond_with(@buyer_bank_detail)
  end

  def destroy
    @buyer_bank_detail.destroy
    respond_with(@buyer_bank_detail)
  end

  private
    def set_buyer_bank_detail
      @buyer_bank_detail = BuyerBankDetail.find(params[:id])
    end

    def buyer_bank_detail_params
      params.require(:buyer_bank_detail).permit(:bank_name, :bank_address, :ifsc_code, :note ,:buyer_id)
    end
end
