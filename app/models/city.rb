class City < ApplicationRecord
    has_many :notes
    has_many :users, through: :notes 
end
