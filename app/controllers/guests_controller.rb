class GuestsController < ApplicationController

  def index
    @guests = Guest.all 
  end

  def show
    current_guest
  end

  private 
    def current_guest 
      @guest = Guest.find(params[:id])
    end  

end
