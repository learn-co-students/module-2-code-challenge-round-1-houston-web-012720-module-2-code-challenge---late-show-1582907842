class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def average_rating
    total = self.appearances.reduce(0) {|sum, appearance| sum + appearance.rating }.to_f
    (total / self.appearances.count).round(1)
  end
end
