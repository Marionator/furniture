class BookingsController < ApplicationController
  before_action :set_item, only: [:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
    @my_item_bookings = Booking.where(item: current_user.items)
  end

  def new
    @booking = Booking.new(booking_params)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.item = @item
    if @booking.save
      redirect_to item_path(@item)
    else
      render :new, status: :unproccessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :start_date, :end_date)
  end
end
