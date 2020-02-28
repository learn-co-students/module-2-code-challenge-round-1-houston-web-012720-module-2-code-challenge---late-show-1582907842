class AppearancesController < ApplicationController

    # before_action :current_appearance, only: [:create]

    def index
        @appearances = Appearance.all
    end

    def new
        @appearance = Appearance.new#(appearance_params)
        @guests = Guest.all 
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.find(params[:id])
        if @appearance.valid?
            @appearance.save
            redirect_to episode_path
        else
            redirect_to new_appearance_path
        end
    end

    private

#   def current_appearance
#     @appearance = Appearance.find(params[:id])
#   end

  def appearance_params
    params.require(:appearances).permit(:guest_id, :episode_id, :rating)
  end
end