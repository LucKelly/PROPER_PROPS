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
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
