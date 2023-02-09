class FavoritesController < ApplicationController
  before_action :set_item, only: [:create]

  def index
    @favorites = Favorite.where(user: current_user)
  end

  def create
    @favorite = Favorite.new
    @favorite.item = @item
    @favorite.user = current_user
    if @favorite.save
      redirect_to item_path(@item), alert: "Saved to Wishlist"
    else
      render :show, status: :unproccessable_entity, alert: "Couldn't save to Wishlist :( Please, reload and try again!"
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end
