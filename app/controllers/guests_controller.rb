class GuestsController < ApplicationController

  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  def index
    @guests = Guest.all
  end

  def show
  end  

  def edit
  end  

  def new
    @guest = Guest.new
  end  

  def update
    @guest.update(guest_params)
    redirect_to guest_path(@guest)
  end  

  def create
    @guest = Guest.new(guest_params)
    @guest.save
    redirect_to guest_path(@guest)
  end  

  def delete
    @guest.destroy
    redirect_to guests_path
  end  

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end  

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end  

end
