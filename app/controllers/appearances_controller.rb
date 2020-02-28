class AppearancesController < ApplicationController

  before_action :set_appearance, only: [:show, :edit, :update, :destroy]

  def index
    @appearances = Appearance.all
  end

  def show
  end  

  def edit
  end  

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end  

  def update
    if @appearance.update(appearance_params)
      redirect_to episode_path(@appearance.episode_id)
    else
      render :edit
    end    
  end  

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
      redirect_to episode_path(@appearance.episode_id)
    else
      render :new
    end    
  end  

  def delete
    @appearance.destroy
    redirect_to appearances_path
  end  

  private

  def set_appearance
    @appearance = Appearance.find(params[:id])
  end  

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :number)
  end  

end
