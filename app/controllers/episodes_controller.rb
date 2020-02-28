class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @avg_rating = episode_rating_avg(@episode)
  end

  def episode_rating_avg(episode)
    rating_array = episode.appearances.map{|app| app.rating}
    t = rating_array.reduce(:+)
    t.to_f/rating_array.count
  end
  
end
