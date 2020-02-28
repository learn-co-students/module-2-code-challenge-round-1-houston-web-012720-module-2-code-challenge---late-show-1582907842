class AppearancesController < ApplicationController

  before_action :current_appearance, only: [:show]

  def show 

  end

  def new
    @appearance = Appearance.new
    @guests = Guest.all 
    @episodes = Episode.all 
  end

  def create 
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid? 
      @appearance = Appearance.create(appearance_params)
      redirect_to episode_path(@appearance.episode)
    else 
      flash[:errors] = @appearance.errors.full_messages  
      redirect_to new_appearance_path
    end
  end

  private 
  
  def current_appearance
    @appearance = Appearance.find(params[:id])
  end

  def appearance_params 
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
