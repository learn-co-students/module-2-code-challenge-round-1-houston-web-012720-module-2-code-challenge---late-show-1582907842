class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  def sorted_appearances
    self.appearances.order("rating DESC")
  end
end
