class Api::V1::ServicesController < Api::V1::BaseController
  def index
    @services = Service.all
    render json: @services
  end

  def show
    @service = Service.find(params[:id])
    render json: @service
  end

  def new
    @service = Service.new
  end


  def create
    @service = Service.new(serviceparams)
    @service.save
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def serviceparams
    params.require(:service).permit(:title, :category)
  end
end
