class AppearancesController < ApplicationController
    before_action :current_appearance, only: [:show,:edit,:update,:destroy]
  def index
    @appearances = Appearance.all
  end
  def show 
  end 

  def new 
    @appearance = Appearance.new 
    @guests = Guest.all 
    @episodes = Episode.all
  end

  def create
    @appearance = Appearance.new(strong_params)
    if @apperance.valid?
      @apperance.save
      redirect_to appearance_path(@guest)
    else
      redirect_to new_apperance
    end
  end
  def edit
    @guests = Guest.all 
    @episodes = Episode.all
  end
  def update 
    if @appearance.update(strong_params)
    redirect_to appearance_path(@appearance)
    else 
      redirect_to edit_appearance_path
    end
  end
  def destroy
    @guest.destroy  
    redirect_to appearances_path
  end
  private 
  def current_appearance
    @appearance = Appearance.find(params[:id])
  end
  def strong_params
  
    params.require(:appearance).permit(:guest_id, :episode_id)
  end
end
