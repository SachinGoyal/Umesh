class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @search = Item.search(params[:q])
    @items = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
    #@items = Item.all
    #respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @item = Item.new
    respond_with(@item)
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.save
    respond_with(@item)
  end

  def update
    @item.update(item_params)
    respond_with(@item)
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:item_code, :article_no, :jc, :price, :description, :image, :remote_image_url)
    end
end
