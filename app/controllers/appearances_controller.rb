class AppearancesController < ApplicationController
  
  before_action :current_appearance, only: [:show]
  
  def index
    @appearances = Appearance.all
  end

  def show
  end

  def new
    @guests = Guest.all
    @episodes = Episode.all
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

  def edit
  end

  private

  def current_appearance
    @appearance = Appearance.find(params[:id])
  end

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end
end
