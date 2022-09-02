class BookingsController < ApplicationController
  before_action :set_item, only: [:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
    @my_item_bookings = Booking.where(item: current_user.items)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render "bookings/show", status: :unprocessable_entity
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
    params.require(:booking).permit(:start_date, :end_date)
  end
end
