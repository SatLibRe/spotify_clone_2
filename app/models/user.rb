class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    has_many :songs, through: :favorites
    validates :name, uniqueness: true
    validates :password, length: { in: 6..20 }
end
