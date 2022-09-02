class BookingsController < ApplicationController
  before_action :set_item, only: [:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
    @my_item_bookings = Booking.where(item: current_user.items)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.price = get_price
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

  def get_price
    @booking = Booking.find(params[:id])
    @item = @booking.item
    @price = @booking.start_date - @booking.end_date
    @price = @days * (@item.price / 7)
    @price
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
