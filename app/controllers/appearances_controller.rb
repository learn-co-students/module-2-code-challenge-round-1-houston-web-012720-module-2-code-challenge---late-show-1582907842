class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        appearance = Appearance.create(strong_params)
                redirect_to episode_path(episode)
    end


    private 

    def strong_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
