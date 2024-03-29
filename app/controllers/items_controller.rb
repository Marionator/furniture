class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @items = Item.search_by_category_name_description(params[:query])
    else
      @items = Item.all
    end
    @items = @items.filter_by_category(params[:category]) if params[:category].present?
    @items = @items.filter_by_color(params[:color]) if params[:color].present?
    @items = @items.filter_by_shipping(params[:shipping]) if params[:shipping].present?

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'items', :formats=>[:text, :html], locals: { items: @items } }
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item), alert: "Item added successfully"
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
    set_item
    @booking = Booking.new
    @favorite = Favorite.new
  end

  def edit
    set_item
  end

  def update
    set_item
    @item.update(item_params)
    redirect_to item_path(@item), alert: "Your item details were updated"
  end

  def destroy
    set_item
    @item.destroy
    redirect_to items_path, status: :see_other, alert: "Item deleted"
  end

  private

  def item_params
    params.require(:item).permit(:name, :photo, :category, :color, :description, :price, :width, :height, :depth, :weight, :shipping)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
