class ServicesController < ApplicationController
  def index
    @services = Service.find(params[:category])
  end

  def new
    @service = Service.new
  end

  def show
    @service = Service.find(params[:id])
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
