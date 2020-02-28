class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = Episode.all
  end

  def show
  end

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end
end
