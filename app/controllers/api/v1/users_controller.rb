class Api::V1::UsersController < Api::V1::BaseController

  def show
    # @services = Service.all
    @user = User.find(params[:id])
  end
end
