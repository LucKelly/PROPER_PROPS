class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
    @prop = Prop.find(params[:prop_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.prop = Prop.find(params[:prop_id])
    @prop = @booking.prop
    raise
    if @booking.save
      redirect_to bookings_path
    else
      render 'props/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
