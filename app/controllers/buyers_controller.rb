class BuyersController < ApplicationController
  before_action :set_buyer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @search = Buyer.search(params[:q])
    @buyers = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  #  @buyers = Buyer.all
   # respond_with(@buyers)
  end

  def show
    @buyer = Buyer.find(params[:id])
    @buyer_bank_details = @buyer.buyer_bank_details
    respond_with(@buyer)
  end

  def new
    @buyer = Buyer.new
    respond_with(@buyer)
  end

  def edit
  end

  def create
    @buyer = Buyer.new(buyer_params)
    @buyer.save
    respond_with(@buyer)
  end

  def update
    @buyer.update(buyer_params)
    respond_with(@buyer)
  end

  def destroy
    @buyer.destroy
    respond_with(@buyer)
  end

  private
    def set_buyer
      @buyer = Buyer.find(params[:id])
    end

    def buyer_params
      params.require(:buyer).permit(:name, :company_name, :address, :zip_code, :state, :country, :email, :telephone_no, :mobile_number, :comment)
    end
end
