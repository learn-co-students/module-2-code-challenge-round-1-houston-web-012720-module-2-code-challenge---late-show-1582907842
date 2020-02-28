class GuestsController < ApplicationController
before_action :current_guest, only: [:show,:edit,:update,:destroy]
  def index
    @guests = Guest.all
  end
  def show 
  end 

  def new 
    @guest = Guest.new 
  end

  def create
    @guest = Guest.create(strong_params)
    redirect_to guest_path(@guest)
  end
  def edit
  end
  def update 
    @guest.update(strong_params)
    redirect_to guest_path(@guest)
  end
  def destroy
    @guest.destroy  
    redirect_to guests_path
  end
  private 
  def current_guest
    @guest = Guest.find(params[:id])
  end
  def strong_params
  
    params.require(:guest).permit(:name, :occupation)
  end
end
