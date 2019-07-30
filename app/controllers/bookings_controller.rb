class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookingparams)
    @booking.save
    redirect_to "bookings#index"
  end

  def edit
  end

  def update
  end

  def bookingparams
    params.require(:booking).permit(:user_id)
  end
end
