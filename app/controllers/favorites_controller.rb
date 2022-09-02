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
      redirect_to item_path(@item)
    else
      render :show, status: :unproccessable_entity
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
