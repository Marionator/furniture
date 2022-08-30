class ItemsController < ApplicationController
  before_action :set_item, only: %i[show, edit, update, destroy]

  def index
    @items = Item.all
  end

  def new
    @item =Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save?
      redirect_to item_path(@item)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirct_to item_path(@item)
  end

  def destroy
    @item.destroy
    redirect_to item_path, status: :see_other
  end

  private

  def item_params
    params.require(:item).permit(:name, :type, :status, :color, :description, :price, :width, :height, :depth, :weight, :shipping)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
