class Api::V1::BookingsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  # def index
  #   @bookings = Booking.all
  #   render json: @bookings
  # end

  # def show
  #   @service = Service.find(params[:id])
  # end

  def new
    @booking = Booking.new
  end

  def create
    service_id = params[:service_id]
    user_id = params[:booking][:user_id]
    p "service_id"
    p service_id
    p "user_id"
    p user_id
    @booking = Booking.new(service_id: service_id, user_id: user_id, confirmed: true)
    @booking.service = Service.find(@booking.service_id)
    render json: @booking
    p "trying to book"
    p @booking
    p "booking failed"
    p @booking.valid?
    if @booking.save
    p 'saved'
    else
      render_error
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
  # def edit
  # end

  # def update
  # end

  def bookingparams
    params.require(:booking).permit(:user_id, :service_id)
  end
end
