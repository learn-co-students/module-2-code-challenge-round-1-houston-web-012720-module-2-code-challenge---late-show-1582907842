class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

     validates :rate, numericality: { only_integer: true , less_than: 5, greater_than: 1  }
    # validates_inclusion_of :rate, :in => 1...5
end
