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
      redirect_to bookings_path, alert: "You successfuly rented an item!"
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("rent-form", partial: "items/rent_form", locals: {booking: @booking, item: @item }) }
        format.html { render :new, status: :unprocessable_entity, notice: "Please check the form for more details." }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, alert: "Your booking is cancelled"
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
