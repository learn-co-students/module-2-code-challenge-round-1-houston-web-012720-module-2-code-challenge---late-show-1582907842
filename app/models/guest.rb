class Guest < ApplicationRecord
    has_many :appearances
    has_many :epsodes, through: :appearances
end
