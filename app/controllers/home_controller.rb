class HomeController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index

  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name, :service_number, :department)
  end
end
