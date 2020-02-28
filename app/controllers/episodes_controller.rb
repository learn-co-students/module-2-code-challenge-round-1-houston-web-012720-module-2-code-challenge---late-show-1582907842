class EpisodesController < ApplicationController

  before_action :set_episode, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = Episode.all
  end

  def show
  end  

  def edit
  end  

  def new
    @episode = Episode.new
  end  

  def update
    @episode.update(episode_params)
    redirect_to episode_path(@episode)
  end  

  def create
    @episode = Episode.new(episode_params)
    @episode.save
    redirect_to episode_path(@episode)
  end  

  def delete
    @episode.destroy
    redirect_to episodes_path
  end  

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end  

  def episode_params
    params.require(:episode).permit(:date, :number)
  end  

end
