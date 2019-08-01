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
    @booking = Booking.new(bookingparams)
    @booking.save
    # redirect_to "bookings#index"
  end

  # def edit
  # end

  # def update
  # end

  def bookingparams
    params.require(:booking).permit(:user_id, :service_id)
  end
end
