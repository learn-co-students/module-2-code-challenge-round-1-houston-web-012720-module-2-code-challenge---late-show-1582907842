class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]
  
  def index
    @guests = Guest.all
  end

  def show

  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end
end
