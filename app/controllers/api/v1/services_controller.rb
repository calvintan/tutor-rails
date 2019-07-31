class Api::V1::ServicesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def index
    @services = Service.where(category: params[:category])
    render json: @services
  end

  def show
    @service = Service.find(params[:id])
    render json: @service
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
  end

  def update
  end

  private

  def serviceparams
    params.require(:service).permit(:title, :category, :user_id)
  end
end
