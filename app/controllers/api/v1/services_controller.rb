class Api::V1::ServicesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def all
    # @services = Service.all
    @services = Service.where(user_id: params[:user_id])
    render json: @services
  end

  def index
    @services = Service.where(category: params[:category])
    render json: @services
  end

  def show
    @service = Service.find(params[:id])
    # render json: @service
  end

  # def new
  #   @service = Service.new
  # end

  def create
    @service = Service.new(serviceparams)
    if @service.save
      render :show
    else
      render_error
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(serviceparams)
      render :show
    else
      render_error
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
  end

  private

  def serviceparams
    params.require(:service).permit(:title, :category, :user_id, :description, :location, :time, :difficulty)
  end

  def render_error
    render json: { errors: @service.errors.full_messages },
      status: :unprocessable_entity
  end
end
