class EpisodesController < ApplicationController

  before_action :current, only: [:show]


  def index
    @episodes = Episode.all
  end

  def show
    @guests = Guest.all
  end

  private 

  def current
    @episode = Episode.find(params[:id])
  end
end
