class AppearancesController < ApplicationController
  
  def new
    @appearance = Appearance.new
    @episodes = Episode.all
    @guests = Guest.all
  end

  def create
    @appearance = Appearance.new(strong_params)
    if @appearance.valid?
      @appearance.save
      @episode = Episode.find(params[:appearance][:episode_id])
      redirect_to episode_path(@episode)
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end
    
    
  end

  def strong_params
    params.require(:appearance).permit(:rating, :episode_id, :guest_id)
  end
end
