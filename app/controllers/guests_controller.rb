class GuestsController < ApplicationController

  before_action :current, only: [:show]

  def index
    @guests = Guest.all
  end

  def show
  
  end


  private 
  
  def current
    @guest = Guest.find(params[:id])
  end
end
