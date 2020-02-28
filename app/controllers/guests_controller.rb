class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @episodes = @guest.episodes.sort { |a,b|
      b.rating_of(@guest) <=> a.rating_of(@guest)
    }
  end
end
