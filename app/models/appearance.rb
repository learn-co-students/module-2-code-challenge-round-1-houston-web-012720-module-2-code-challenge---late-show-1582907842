class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :appearance, numericality: {only_integer: true}
end
