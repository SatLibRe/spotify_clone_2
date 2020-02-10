class User < ApplicationRecord
    has_many :favorites
    has_many :songs, through: :favorites
end
