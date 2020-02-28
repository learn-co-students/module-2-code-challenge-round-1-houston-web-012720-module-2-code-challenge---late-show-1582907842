class GuestsController < ApplicationController

  before_action :current_guest, only: [:show]


  def index
    @guests = Guest.all
  end

  def show 
    @episodes = @guest.episodes

  end

  private 
  
  def current_guest
    @guest = Guest.find(params[:id])
  end
end



=begin 

APPEARANCE RATING 

GUEST WILL HAVE MANY APPEARANCES 

EACH EPISODE CAN HAVE MULTIPLE APPEARANCES 

BETWEEN GUEST AND EPISODE FIND THE APPEARANCE.RATING

=end 

