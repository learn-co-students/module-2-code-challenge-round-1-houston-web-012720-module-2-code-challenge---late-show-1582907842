class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def to_s
    "Episode # #{self.number}, was shown #{self.date}"
  end

  def rating_of(guest)
    Appearance.find_by(guest_id: guest.id, episode_id: self.id).rating
  end

  def average_rating
    ((self.appearances.reduce(0){|sum, app| sum += app.rating}.to_f) / self.appearances.count).round(1) rescue 0
  end
end
