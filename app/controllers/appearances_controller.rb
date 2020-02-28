class AppearancesController < ApplicationController

  before_action :current_appearance, only: [:edit, :update, :show]

  def show 
  end
  
  def new
    @appearance = Appearance.new 
    @guests = Guest.all 
    @episodes = Episode.all 
  end

  def create 
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to @appearance
    else 
      flash[:errors] = @appearance.errors.full_messages 
      # render "new"  
      redirect_to new_appearance_path
    end
  end 

  def edit
    @guests = Guest.all 
    @episodes = Episode.all 
  end

  def update 
    if @appearance.update(appearance_params)
      redirect_to @appearance
    else
      flash[:errors] = @appearance.errors.full_messages 
      # render "edit"  
      redirect_to edit_appearance_path
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
