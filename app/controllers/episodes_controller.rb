class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all 
  end

  def show
    current_episode
  end

  private 
    def current_episode 
      @episode = Episode.find(params[:id])
    end
end
