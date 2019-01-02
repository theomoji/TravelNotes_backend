class User < ApplicationRecord
    has_many :notes
    has_many :cities, through: :notes
end
