class GuestsController < ApplicationController

  before_action :current_guest, only: [:show]

  def index
    @guests = Guest.all
  end

  def show
  end

  private

  def current_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name, :occupaion)
  end
end
