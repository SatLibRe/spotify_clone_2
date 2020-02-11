class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    has_many :songs, through: :favorites
end
