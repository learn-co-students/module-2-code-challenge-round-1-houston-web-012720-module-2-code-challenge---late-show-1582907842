class EpisodesController < ApplicationController

  before_action :current_episode, only: [:show,:edit,:update,:destroy]
  def index
    @episodes = Episode.all
  end
  def show 
    
  end 

  def new 
    @episode = Episode.new 
  end

  def create
    @episode = Episode.create(strong_params)
    redirect_to episode_path(@episode)
  end
  def edit
  end
  def update 
    @episode.update(strong_params)
    redirect_to episode_path(@episode)
  end
  def destroy
    @episode.destroy  
    redirect_to episodes_path
  end
  private 
  def current_episode
    @current_episode = Episode.find(params[:id])
  end
  def strong_params
    params.require(:episode).permit(:date,:num)
  end


end
