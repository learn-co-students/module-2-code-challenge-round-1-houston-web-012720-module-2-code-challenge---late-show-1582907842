class AppearancesController < ApplicationController
  def index
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def new
    @episodes = Episode.all
    @guests = Guest.all
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
    redirect_to appearance_path(@appearance)
    else 
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end 
  end 


  def appearance_params
    params.require(:appearance).permit(:rate , :guest_id , :episode_id)
  end 
end
